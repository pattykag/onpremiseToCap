using ZAPI_BUSINESS_PARTNER from './external/ZAPI_BUSINESS_PARTNER.cds';

service ZAPI_BUSINESS_PARTNERSampleService {
    @readonly
    entity A_AddressEmailAddress   as projection on ZAPI_BUSINESS_PARTNER.A_AddressEmailAddress {
        key AddressID,
        key Person,
        key OrdinalNumber,
            IsDefaultEmailAddress,
            EmailAddress,
            SearchEmailAddress,
            AddressCommunicationRemarkText
    };

    @readonly
    entity A_BusinessPartner       as projection on ZAPI_BUSINESS_PARTNER.A_BusinessPartner {
        key BusinessPartner,
            Customer,
            Supplier,
            AcademicTitle
    };

    @readonly
    entity A_CustomerSalesAreaText as projection on ZAPI_BUSINESS_PARTNER.A_CustomerSalesAreaText {
        key Customer,
        key SalesOrganization,
        key DistributionChannel,
        key Division,
        key Language,
        key LongTextID,
            LongText
    };

    @readonly
    entity A_Customer              as projection on ZAPI_BUSINESS_PARTNER.A_Customer {
        key Customer,
            AuthorizationGroup,
            BillingIsBlockedForCustomer,
            CreatedByUser,
            CreationDate,
            CustomerAccountGroup,
            CustomerClassification,
            CustomerFullName,
            CustomerName,
            DeliveryIsBlocked,
            NFPartnerIsNaturalPerson,
            OrderIsBlockedForCustomer,
            PostingIsBlocked,
            Supplier,
            CustomerCorporateGroup,
            FiscalAddress,
            Industry,
            IndustryCode1,
            IndustryCode2,
            IndustryCode3,
            IndustryCode4,
            IndustryCode5,
            InternationalLocationNumber1,
            NielsenRegion,
            ResponsibleType,
            TaxNumber1,
            TaxNumber2,
            TaxNumber3,
            TaxNumber4,
            TaxNumber5,
            TaxNumberType,
            VATRegistration,
            DeletionIndicator,
            ExpressTrainStationName,
            TrainStationName,
            CityCode,
            County
    };
}
