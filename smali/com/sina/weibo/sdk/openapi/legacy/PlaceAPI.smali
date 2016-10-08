.class public Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "PlaceAPI.java"


# static fields
.field public static final GENDER_ALL:I = 0x0

.field public static final GENDER_MAN:I = 0x1

.field public static final GENDER_WOMAM:I = 0x2

.field public static final NEARBY_POIS_SORT_BY_CHECKIN_NUMBER:I = 0x2

.field public static final NEARBY_POIS_SORT_BY_DISTENCE:I = 0x1

.field public static final NEARBY_POIS_SORT_BY_WEIGHT:I = 0x0

.field public static final NEARBY_USER_SORT_BY_DISTANCE:I = 0x1

.field public static final NEARBY_USER_SORT_BY_SOCIAL_SHIP:I = 0x2

.field public static final NEARBY_USER_SORT_BY_TIME:I = 0x0

.field public static final POIS_SORT_BY_HOT:I = 0x1

.field public static final POIS_SORT_BY_TIME:I = 0x0

.field public static final RELATIONSHIP_FILTER_ALL:I = 0x0

.field public static final RELATIONSHIP_FILTER_FOLLOW:I = 0x2

.field public static final RELATIONSHIP_FILTER_STRANGER:I = 0x1

.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/place"

.field public static final SORT_BY_DISTENCE:I = 0x1

.field public static final SORT_BY_TIME:I = 0x0

.field public static final USER_LEVEL_ALL:I = 0x0

.field public static final USER_LEVEL_NORMAL:I = 0x1

.field public static final USER_LEVEL_STAR:I = 0x7

.field public static final USER_LEVEL_VIP:I = 0x2


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 71
    return-void
.end method

.method private buildNearbyParams(Ljava/lang/String;Ljava/lang/String;IIIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3

    .prologue
    .line 597
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 598
    const-string v0, "lat"

    invoke-virtual {v1, v0, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v0, "long"

    invoke-virtual {v1, v0, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v0, "range"

    invoke-virtual {v1, v0, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 601
    const-string v0, "count"

    invoke-virtual {v1, v0, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 602
    const-string v0, "page"

    invoke-virtual {v1, v0, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 603
    const-string v0, "sort"

    invoke-virtual {v1, v0, p6}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 604
    const-string v2, "offset"

    if-eqz p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 605
    return-object v1

    .line 604
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildPoiis(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3

    .prologue
    .line 609
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 610
    const-string v0, "poiid"

    invoke-virtual {v1, v0, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v0, "status"

    invoke-virtual {v1, v0, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v2, "public"

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 613
    return-object v1

    .line 612
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildPoisParams(Ljava/lang/String;IIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3

    .prologue
    .line 617
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 618
    const-string v0, "poiid"

    invoke-virtual {v1, v0, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v2, "base_app"

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 620
    const-string v0, "count"

    invoke-virtual {v1, v0, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 621
    const-string v0, "page"

    invoke-virtual {v1, v0, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 622
    return-object v1

    .line 619
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3

    .prologue
    .line 576
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 577
    const-string v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 578
    const-string v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 579
    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 580
    const-string v1, "page"

    invoke-virtual {v0, v1, p6}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 581
    return-object v0
.end method

.method private buildUserParams(JIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3

    .prologue
    .line 586
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 587
    const-string v0, "uid"

    invoke-virtual {v1, v0, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 588
    const-string v0, "count"

    invoke-virtual {v1, v0, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 589
    const-string v0, "page"

    invoke-virtual {v1, v0, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 590
    const-string v2, "base_app"

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 591
    return-object v1

    .line 590
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public friendsTimeline(JJIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 98
    invoke-direct/range {p0 .. p6}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 99
    const-string v2, "type"

    if-eqz p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 100
    const-string v0, "https://api.weibo.com/2/place/friends_timeline.json"

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p8}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 101
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nearbyPhotos(Ljava/lang/String;Ljava/lang/String;IJJIIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 10

    .prologue
    .line 414
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p8

    move/from16 v9, p11

    invoke-direct/range {v2 .. v9}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildNearbyParams(Ljava/lang/String;Ljava/lang/String;IIIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v2

    .line 415
    const-string v3, "starttime"

    invoke-virtual {v2, v3, p4, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 416
    const-string v3, "endtime"

    move-wide/from16 v0, p6

    invoke-virtual {v2, v3, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 417
    const-string v3, "https://api.weibo.com/2/place/nearby/photos.json"

    const-string v4, "GET"

    move-object/from16 v0, p12

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 418
    return-void
.end method

.method public nearbyPois(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 9

    .prologue
    .line 366
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildNearbyParams(Ljava/lang/String;Ljava/lang/String;IIIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 367
    const-string v2, "q"

    invoke-virtual {v1, v2, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v2, "category"

    invoke-virtual {v1, v2, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v2, "https://api.weibo.com/2/place/nearby/pois.json"

    const-string v3, "GET"

    move-object/from16 v0, p10

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 370
    return-void
.end method

.method public nearbyTimeline(Ljava/lang/String;Ljava/lang/String;IJJIIIZZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 10

    .prologue
    .line 160
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p8

    move/from16 v9, p12

    invoke-direct/range {v2 .. v9}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildNearbyParams(Ljava/lang/String;Ljava/lang/String;IIIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v3

    .line 161
    const-string v2, "starttime"

    invoke-virtual {v3, v2, p4, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 162
    const-string v2, "endtime"

    move-wide/from16 v0, p6

    invoke-virtual {v3, v2, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 163
    const-string v4, "base_app"

    if-eqz p11, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 164
    const-string v2, "https://api.weibo.com/2/place/nearby_timeline.json"

    const-string v4, "GET"

    move-object/from16 v0, p13

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 165
    return-void

    .line 163
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public nearbyUserList(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 9

    .prologue
    .line 452
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v5, p3

    move v6, p4

    move v7, p6

    move/from16 v8, p12

    invoke-direct/range {v1 .. v8}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildNearbyParams(Ljava/lang/String;Ljava/lang/String;IIIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 453
    const-string v2, "filter"

    move/from16 v0, p7

    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 454
    const-string v2, "gender"

    move/from16 v0, p8

    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 455
    const-string v2, "level"

    move/from16 v0, p9

    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 456
    const-string v2, "startbirth"

    move/from16 v0, p10

    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 457
    const-string v2, "endbirth"

    move/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 458
    const-string v2, "https://api.weibo.com/2/place/nearby_users/list.json"

    const-string v3, "GET"

    move-object/from16 v0, p13

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 459
    return-void
.end method

.method public nearbyUsers(Ljava/lang/String;Ljava/lang/String;IJJIIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 10

    .prologue
    .line 390
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p8

    move/from16 v9, p11

    invoke-direct/range {v2 .. v9}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildNearbyParams(Ljava/lang/String;Ljava/lang/String;IIIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v2

    .line 391
    const-string v3, "starttime"

    invoke-virtual {v2, v3, p4, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 392
    const-string v3, "endtime"

    move-wide/from16 v0, p6

    invoke-virtual {v2, v3, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 393
    const-string v3, "https://api.weibo.com/2/place/nearby/users.json"

    const-string v4, "GET"

    move-object/from16 v0, p12

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 394
    return-void
.end method

.method public nearbyUsersCreate(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 558
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 559
    const-string v1, "lat"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "long"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v1, "https://api.weibo.com/2/place/nearby_users/create.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 562
    return-void
.end method

.method public nearbyUsersDestroy(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 570
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 571
    const-string v1, "https://api.weibo.com/2/place/nearby_users/destory.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 572
    return-void
.end method

.method public poiTimeline(Ljava/lang/String;JJIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 10

    .prologue
    .line 135
    move-object v3, p0

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v3 .. v9}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v3

    .line 136
    const-string v2, "poiid"

    invoke-virtual {v3, v2, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v4, "base_app"

    if-eqz p8, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 138
    const-string v2, "https://api.weibo.com/2/place/poi_timeline.json"

    const-string v4, "GET"

    move-object/from16 v0, p9

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 139
    return-void

    .line 137
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public poisAddCheckin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 504
    invoke-direct {p0, p1, p2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildPoiis(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 505
    const-string v1, "pic"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v1, "https://api.weibo.com/2/place/pois/add_checkin.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 507
    return-void
.end method

.method public poisAddPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 519
    invoke-direct {p0, p1, p2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildPoiis(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 520
    const-string v1, "pic"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v1, "https://api.weibo.com/2/place/pois/add_photo.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 522
    return-void
.end method

.method public poisAddTip(Ljava/lang/String;Ljava/lang/String;ZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 533
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildPoiis(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 534
    const-string v1, "https://api.weibo.com/2/place/pois/add_tip.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 535
    return-void
.end method

.method public poisAddTodo(Ljava/lang/String;Ljava/lang/String;ZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 546
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildPoiis(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 547
    const-string v1, "https://api.weibo.com/2/place/pois/add_todo.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 548
    return-void
.end method

.method public poisCategory(IZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 341
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 342
    const-string v0, "pid"

    invoke-virtual {v1, v0, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 343
    const-string v2, "flag"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 344
    const-string v0, "https://api.weibo.com/2/place/pois/category.json"

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 345
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public poisCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 479
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 480
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v1, "category"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v1, "lat"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v1, "long"

    invoke-virtual {v0, v1, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v1, "city"

    invoke-virtual {v0, v1, p6}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v1, "province"

    invoke-virtual {v0, v1, p7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v1, "country"

    invoke-virtual {v0, v1, p8}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v1, "phone"

    invoke-virtual {v0, v1, p9}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v1, "postcode"

    invoke-virtual {v0, v1, p10}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v1, "extra"

    invoke-virtual {v0, v1, p11}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v1, "https://api.weibo.com/2/place/pois/create.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p12}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 492
    return-void
.end method

.method public poisPhotos(Ljava/lang/String;IIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 290
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildPoisParams(Ljava/lang/String;IIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 291
    const-string v1, "sort"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 292
    const-string v1, "https://api.weibo.com/2/place/pois/photos.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 293
    return-void
.end method

.method public poisSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 325
    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "city"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "category"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v1, "count"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 329
    const-string v1, "page"

    invoke-virtual {v0, v1, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 330
    const-string v1, "https://api.weibo.com/2/place/pois/search.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 331
    return-void
.end method

.method public poisShow(Ljava/lang/String;ZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 257
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 258
    const-string v0, "poiid"

    invoke-virtual {v1, v0, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "base_app"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 260
    const-string v0, "https://api.weibo.com/2/place/pois/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 261
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public poisTips(Ljava/lang/String;IIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildPoisParams(Ljava/lang/String;IIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 309
    const-string v1, "sort"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 310
    const-string v1, "https://api.weibo.com/2/place/pois/tips.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 311
    return-void
.end method

.method public poisUsers(Ljava/lang/String;IIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 273
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildPoisParams(Ljava/lang/String;IIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 274
    const-string v1, "https://api.weibo.com/2/place/pois/users.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 275
    return-void
.end method

.method public pulicTimeline(JZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 80
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 81
    const-string v0, "count"

    invoke-virtual {v1, v0, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 82
    const-string v2, "base_app"

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 83
    const-string v0, "https://api.weibo.com/2/place/public_timelin.json"

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 84
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public statusesShow(JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 175
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 176
    const-string v1, "https://api.weibo.com/2/place/statuses/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 177
    return-void
.end method

.method public userTimeline(JJJIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 11

    .prologue
    .line 116
    move-object v3, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v3

    .line 117
    const-string v2, "uid"

    invoke-virtual {v3, v2, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 118
    const-string v4, "base_app"

    if-eqz p9, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 119
    const-string v2, "https://api.weibo.com/2/place/user_timeline.json"

    const-string v4, "GET"

    move-object/from16 v0, p10

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public usersCheckins(JIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 203
    invoke-direct/range {p0 .. p5}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildUserParams(JIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 204
    const-string v1, "https://api.weibo.com/2/place/users/checkins.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 205
    return-void
.end method

.method public usersPhotos(JIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 217
    invoke-direct/range {p0 .. p5}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildUserParams(JIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 218
    const-string v1, "https://api.weibo.com/2/place/users/photos.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 219
    return-void
.end method

.method public usersShow(JZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 187
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 188
    const-string v0, "uid"

    invoke-virtual {v1, v0, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 189
    const-string v2, "base_app"

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 190
    const-string v0, "https://api.weibo.com/2/place/users/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 191
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usersTips(JIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 231
    invoke-direct/range {p0 .. p5}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildUserParams(JIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 232
    const-string v1, "https://api.weibo.com/2/place/users/tips.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 233
    return-void
.end method

.method public usersTodo(JIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 245
    invoke-direct/range {p0 .. p5}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->buildUserParams(JIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 246
    const-string v1, "https://api.weibo.com/2/place/users/todos.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/sina/weibo/sdk/openapi/legacy/PlaceAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 247
    return-void
.end method
