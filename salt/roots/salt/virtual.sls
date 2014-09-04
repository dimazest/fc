bashrc:
  file.append:
    - name: /home/vagrant/.bashrc
    - text: export LC_ALL="en_US.UTF-8"

/etc/motd:
  file.copy:
    - source: /srv/home/motd

tmux_conf:
  file.copy:
    - name: /home/vagrant/.tmux.conf
    - source: /srv/home/tmux.conf
    - force: true

buildout_conf:
  file.copy:
    - name: /home/vagrant/.buildout.conf
    - source: /srv/home/buildout.conf
    - force: true

tools_buildout_bootstrap:
  cmd.run:
    - name: python3.3 bootstrap.py
    - cwd: /vagrant/
    - user: vagrant
    - unless: ls /vagrant/bin/buildout

buildout:
  cmd.run:
    - name: bin/buildout
    - cwd: /vagrant/
    - user: vagrant
    - env:
      - LC_ALL: en_US.UTF-8

nltk_data:
  cmd.run:
    - name: /vagrant/bin/fowler.corpora-py -c "import nltk; nltk.download('all')"
    - creates: /home/vagrant/nltk_data
    - user: vagrant
