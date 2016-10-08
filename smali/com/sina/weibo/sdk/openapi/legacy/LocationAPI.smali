.class public Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "LocationAPI.java"


# static fields
.field private static final API_BASE_URL:Ljava/lang/String; = "https://api.weibo.com/2/location"

.field private static final READ_API_GET_TO_ADDRESS:I = 0x2

.field private static final READ_API_GPS_TO_OFFSET:I = 0x0

.field private static final READ_API_SEARCH_POIS_BY_GEO:I = 0x1

.field private static final sAPIList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 49
    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "https://api.weibo.com/2/location/geo/gps_to_offset.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "https://api.weibo.com/2/location/pois/search/by_geo.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "https://api.weibo.com/2/location/geo/geo_to_address.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 61
    return-void
.end method

.method private buildGPS2OffsetParams(Ljava/lang/Double;Ljava/lang/Double;)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    const-string v2, "coordinate"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method private buildGeo2AddressParam(Ljava/lang/Double;Ljava/lang/Double;)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string v2, "coordinate"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object v0
.end method

.method private buildSerarPoiByGeoParmas(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v2, "coordinate"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "q"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object v0
.end method


# virtual methods
.method public geo2Address(Ljava/lang/Double;Ljava/lang/Double;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->buildGeo2AddressParam(Ljava/lang/Double;Ljava/lang/Double;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 97
    sget-object v0, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 98
    return-void
.end method

.method public geo2AddressSync(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->buildGeo2AddressParam(Ljava/lang/Double;Ljava/lang/Double;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 121
    sget-object v0, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gps2Offset(Ljava/lang/Double;Ljava/lang/Double;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->buildGPS2OffsetParams(Ljava/lang/Double;Ljava/lang/Double;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 72
    sget-object v0, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 73
    return-void
.end method

.method public gps2OffsetSync(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->buildGPS2OffsetParams(Ljava/lang/Double;Ljava/lang/Double;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 105
    sget-object v0, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public searchPoisByGeo(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->buildSerarPoiByGeoParmas(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 85
    sget-object v0, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 86
    return-void
.end method

.method public searchPoisByGeoSync(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->buildSerarPoiByGeoParmas(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 113
    sget-object v0, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/legacy/LocationAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
