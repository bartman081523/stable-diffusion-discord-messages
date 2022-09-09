# stable-diffusion-discord-messages

All messages from dreambot from all dream-[1-50] channels in stable-diffusion discord

#Folders
raw-messages: messages in gzipped csv format, with every column 

stripped-content: messages in gzipped csv format, with only the "Content" column stripped, where the "!dream" command is

prompts-only: gzipped stripped prompts only in line-separation

scripts: scripts that I used to process the data

#Huggingface dataset:
see this repo for concatenated and stripped only-prompts:

https://huggingface.co/datasets/bartman081523/stable-diffusion-discord-prompts

#unpack

bash command to extract the archives:

cd raw-messages

IFS=$'\n' ; for file in $(ls *.gz); do gunzip $file; done

cd stripped-content

IFS=$'\n' ; for file in $(ls *.gz); do gunzip $file; done

cd prompts-only

IFS=$'\n' ; for file in $(ls *.gz); do gunzip $file; done
