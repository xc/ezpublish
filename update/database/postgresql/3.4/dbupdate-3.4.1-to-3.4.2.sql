UPDATE ezsite_data SET value='3.4.2' WHERE name='ezpublish-version';
UPDATE ezsite_data SET value='9' WHERE name='ezpublish-release';


-- Fix faulty index on ezurl_object_link
ALTER TABLE DROP CONSTRAINT ezurl_object_link1039_key;
CREATE INDEX ezurl_ol_url_id ON ezurl_object_link (url_id);
CREATE INDEX ezurl_ol_coa_id ON ezurl_object_link (contentobject_attribute_id);
CREATE INDEX ezurl_ol_coa_version ON ezurl_object_link (contentobject_attribute_version);

-- Fix bug in cache-block, ezsubtree_exipry
DELETE FROM ezsubtree_expiry;
ALTER TABLE ezsubtree_expiry DROP COLUMN subtree;
ALTER TABLE ezsubtree_expiry ADD COLUMN subtree INT;
CREATE INDEX ezsubtree_expiry_subtree_idx ON ezsubtree_expiry( subtree );

-- Create index for path_identification_string
CREATE INDEX ezcontentobject_tree_path_ident ON ezcontentobject_tree (path_identification_string(50));