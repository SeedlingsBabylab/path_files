
# 1. open audio_files_directories
# 2. get all wav files
# 3. if one with scrubbed then that one, otherwise other one (......wav)

import sys, os
import shutil


audio_files_paths = sys.argv[1]
output_folder= sys.argv[2]
to_copy = []

with open(audio_files_paths, 'r') as f:
    for l in f.readlines():
        print(l)
        l=l.strip()
        wav_files = []
        for end_file in os.listdir(l):
            if end_file.endswith(".wav"):
                wav_files.append(end_file)
        scrubbed = [x for x in wav_files if "scrubbed" in x]
        init = [x for x in wav_files if len(x)==9]
        if len(scrubbed)==1:
            to_copy.append([l, scrubbed[0]])
        elif len(init)==1:
            to_copy.append([l,init[0]])
        else:
            print("More than one or no wav _ something weird")
print(to_copy)

with open(output_folder, 'w') as f:
    for l in to_copy:
        f.write('/'.join(l))
        f.write('\n')



# for f in to_copy:
#     print(f)
#     shutil.copy(os.path.join(f[0], f[1]), os.path.join(output_folder, f[1]))
