%load gt data
dbRoot= '/run/media/401/DataBackup/public_data/Pittsburgh/';

qImagelistFn= [dbRoot, 'groundtruth/querylist.txt'];
qPath= [dbRoot, 'queries_real/'];
dbImagelistFn= [dbRoot, 'groundtruth/imagelist.txt'];
dbPath= [dbRoot, 'images/'];

qImageFns  = textscan(fopen(qImagelistFn, 'r'), '%s'); 
qImageFns  = qImageFns{1};
dbImageFns = textscan(fopen(dbImagelistFn, 'r'), '%s'); 
dbImageFns = dbImageFns{1};

%match_fname = 'match/match/query_00003_db_000001.txt';
match_fname = 'match/query_00000_db_000001.txt';
fid      = fopen(match_fname);

q_fname  = textscan(fid,'%s',1);
q_fname  = [q_fname{1}{1}(23:end-8) '.jpg'];
db_fname = textscan(fid,'%s',1);
db_fname = db_fname{1}{1};
match_data = textscan(fid, '%f %f %f %f %f %f %f %f %f %f %f %f');

fclose(fid);

match_data = cell2mat(match_data);
num_match  = size(match_data,1);

q_im  = imread([qPath q_fname]);
db_im = imread([dbPath db_fname]);

q_feat = match_data(:,2:6)';
db_feat = match_data(:,8:12)'; 
match_idx = [1:num_match ; 1:num_match];

disp_match_features_hesaff(q_im,db_im,q_feat,db_feat,match_idx,'r');