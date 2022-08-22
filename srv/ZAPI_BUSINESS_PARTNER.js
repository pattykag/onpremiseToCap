const cds = require('@sap/cds');

module.exports = async (srv) => 
{        
    // Using CDS API      
    const ZAPI_BUSINESS_PARTNER = await cds.connect.to("ZAPI_BUSINESS_PARTNER"); 
      srv.on('READ', 'A_AddressEmailAddress', req => ZAPI_BUSINESS_PARTNER.run(req.query)); 
      srv.on('READ', 'A_BusinessPartner', req => ZAPI_BUSINESS_PARTNER.run(req.query)); 
      srv.on('READ', 'A_CustomerSalesAreaText', req => ZAPI_BUSINESS_PARTNER.run(req.query)); 
      srv.on('READ', 'A_Customer', req => ZAPI_BUSINESS_PARTNER.run(req.query)); 
}