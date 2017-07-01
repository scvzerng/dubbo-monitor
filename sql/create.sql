


DROP TABLE IF EXISTS dubbo_invoke;
CREATE TABLE dubbo_invoke (
  id varchar(255) NOT NULL DEFAULT '',
  invoke_date date NOT NULL,
  service varchar(255) DEFAULT NULL,
  method varchar(255) DEFAULT NULL,
  consumer varchar(255) DEFAULT NULL,
  provider varchar(255) DEFAULT NULL,
  type varchar(255) DEFAULT '',
  invoke_time BIGINT DEFAULT NULL,
  success BIGINT DEFAULT NULL,
  failure BIGINT DEFAULT NULL,
  elapsed BIGINT DEFAULT NULL,
  concurrent BIGINT DEFAULT NULL,
  max_elapsed BIGINT DEFAULT NULL,
  max_concurrent BIGINT DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE INDEX index_service ON dubbo_invoke(id);
CREATE INDEX index_method ON dubbo_invoke(method);
