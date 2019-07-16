ALTER TABLE zookeepers ADD COLUMN chroot VARCHAR(50);

# --- !Downs

ALTER TABLE zookeepers DROP COLUMN chroot;