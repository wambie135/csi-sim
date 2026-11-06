{
name:"GEO",
index:"world",
valid_begin:[0,0],
valid_end:[0,0],
mother:"",
type :"box",
size: [8000.0, 8000.0, 8000.0],
position:[0.0,0.0,0.0],
material:"air",
invisible:1,
}

{
name:"GEO",
index:"plastic",
valid_begin:[0.0,0.0],
valid_end:[0.0,0.0],
mother:"world",
type:"box",
size: [5.0, 60.0, 5.0],
position:[0.0,0.0,0.0],
material:"CsI_crystal", 
color:[0.0,0.0,1.0,0.2], 
drawstyle:"solid"
}

{
name:"GEO",
index:"side_pmts",
valid_begin:[0.0,0.0],
valid_end:[0.0,0.0],
mother:"world",
type:"pmtarray",

pmt_model:"lappd",          // <-- use our tiny PMT
pmt_detector_type:"idpmt",
sensitive_detector:"/mydet/pmt/inner",
pos_table:"PMTINFO_Practice",
orientation:"manual",
}

//{
//name:"GEO",
//index:"side_pmts",
//valid_begin:[0.0,0.0],
//valid_end:[0.0,0.0],
//mother:"world",
//type:"pmtarray",
//pmt_model:"lappd",
//pmt_detector_type:"idpmt",
//sensitive_detector:"/mydet/pmt/inner",
//pos_table:"PMTINFO_Practice",
//orientation:"manual",
//}
