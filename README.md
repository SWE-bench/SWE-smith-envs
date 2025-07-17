# SWE-smith Environment Assets
This repository contains the artifacts for building environments (Docker images) corresponding to all 250 (and counting) repositories represented in the [SWE-smith](https://github.com/SWE-bench/SWE-smith) dataset.

The repository corresponds to the `logs/build_images/` directory under SWE-smith.

All Docker images for SWE-smith repositories have been pushed to https://hub.docker.com/u/jyangballin. If you are interested in getting the image for a repo, simply run:
```
> docker pull jyangballin/swesmith.x86_64.<mirror repo name>
```

You do _not_ need to download this repository to use SWE-smith. This repository has been made available mainly to serve as a "ledger" and reproducible source for how SWE-smith Docker images are built.

If you would like to build images from source, instead of downloading from Docker hub, do the following:
```
> git clone git@github.com:SWE-bench/SWE-smith.git
> cd SWE-smith
> mkdir logs/; cd logs;
> git clone git@github.com:SWE-bench/SWE-smith-envs.git build_images
```

Then run (assuming you have [installed SWE-smith](https://swesmith.com/getting_started/installation/)
```
python swesmith/build_repo/create_images.py
```

If you found these assets useful, please consider citing us in your work!
```
@misc{yang2025swesmith,
  title={SWE-smith: Scaling Data for Software Engineering Agents}, 
  author={John Yang and Kilian Leret and Carlos E. Jimenez and Alexander Wettig and Kabir Khandpur and Yanzhe Zhang and Binyuan Hui and Ofir Press and Ludwig Schmidt and Diyi Yang},
  year={2025},
  eprint={2504.21798},
  archivePrefix={arXiv},
  primaryClass={cs.SE},
  url={https://arxiv.org/abs/2504.21798}, 
}
```
