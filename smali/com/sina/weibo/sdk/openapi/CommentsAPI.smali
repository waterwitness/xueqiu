.class public Lcom/sina/weibo/sdk/openapi/CommentsAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "CommentsAPI.java"


# static fields
.field private static final API_BASE_URL:Ljava/lang/String; = "https://api.weibo.com/2/comments"

.field public static final AUTHOR_FILTER_ALL:I = 0x0

.field public static final AUTHOR_FILTER_ATTENTIONS:I = 0x1

.field public static final AUTHOR_FILTER_STRANGER:I = 0x2

.field private static final READ_API_BY_ME:I = 0x1

.field private static final READ_API_MENTIONS:I = 0x4

.field private static final READ_API_SHOW:I = 0x2

.field private static final READ_API_SHOW_BATCH:I = 0x5

.field private static final READ_API_TIMELINE:I = 0x3

.field private static final READ_API_TO_ME:I = 0x0

.field public static final SRC_FILTER_ALL:I = 0x0

.field public static final SRC_FILTER_WEIBO:I = 0x1

.field public static final SRC_FILTER_WEIQUN:I = 0x2

.field private static final WRITE_API_CREATE:I = 0x6

.field private static final WRITE_API_DESTROY:I = 0x7

.field private static final WRITE_API_REPLY:I = 0x9

.field private static final WRITE_API_SDESTROY_BATCH:I = 0x8

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
    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 67
    sput-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "https://api.weibo.com/2/comments/to_me.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "https://api.weibo.com/2/comments/by_me.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "https://api.weibo.com/2/comments/show.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "https://api.weibo.com/2/comments/timeline.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "https://api.weibo.com/2/comments/mentions.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "https://api.weibo.com/2/comments/show_batch.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "https://api.weibo.com/2/comments/create.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "https://api.weibo.com/2/comments/destroy.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "https://api.weibo.com/2/comments/sdestroy_batch.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "https://api.weibo.com/2/comments/reply.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 86
    return-void
.end method

.method private buildCreateParams(Ljava/lang/String;JZ)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 4

    .prologue
    .line 376
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 377
    const-string v0, "comment"

    invoke-virtual {v1, v0, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "id"

    invoke-virtual {v1, v0, p2, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 379
    const-string v2, "comment_ori"

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 380
    return-object v1

    .line 379
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildReplyParams(JJLjava/lang/String;ZZ)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 385
    new-instance v3, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 386
    const-string v0, "cid"

    invoke-virtual {v3, v0, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 387
    const-string v0, "id"

    invoke-virtual {v3, v0, p3, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 388
    const-string v0, "comment"

    invoke-virtual {v3, v0, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v4, "without_mention"

    if-eqz p6, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 390
    const-string v0, "comment_ori"

    if-eqz p7, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 391
    return-object v3

    :cond_0
    move v0, v2

    .line 389
    goto :goto_0

    :cond_1
    move v1, v2

    .line 390
    goto :goto_1
.end method

.method private buildShowOrDestoryBatchParams([J)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 6

    .prologue
    .line 365
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    array-length v3, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 371
    const-string v0, "cids"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-object v1

    .line 367
    :cond_0
    aget-wide v4, p1, v0

    .line 368
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3

    .prologue
    .line 356
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 357
    const-string v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 358
    const-string v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 359
    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 360
    const-string v1, "page"

    invoke-virtual {v0, v1, p6}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 361
    return-object v0
.end method


# virtual methods
.method public byME(JJIIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 123
    invoke-direct/range {p0 .. p6}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 124
    const-string v0, "filter_by_source"

    invoke-virtual {v1, v0, p7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 125
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p8}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 126
    return-void
.end method

.method public byMESync(JJIII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    invoke-direct/range {p0 .. p6}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 278
    const-string v0, "filter_by_source"

    invoke-virtual {v1, v0, p7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 279
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/String;JZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 4

    .prologue
    .line 214
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildCreateParams(Ljava/lang/String;JZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 215
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2, p5}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 216
    return-void
.end method

.method public createSync(Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 323
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildCreateParams(Ljava/lang/String;JZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 324
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroy(JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 225
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 226
    const-string v0, "cid"

    invoke-virtual {v1, v0, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 227
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 228
    return-void
.end method

.method public destroyBatch([JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildShowOrDestoryBatchParams([J)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 238
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 239
    return-void
.end method

.method public destroyBatchSync([J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildShowOrDestoryBatchParams([J)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 341
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroySync(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 332
    const-string v0, "cid"

    invoke-virtual {v1, v0, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 333
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mentions(JJIIIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 188
    invoke-direct/range {p0 .. p6}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 189
    const-string v0, "filter_by_author"

    invoke-virtual {v1, v0, p7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 190
    const-string v0, "filter_by_source"

    invoke-virtual {v1, v0, p8}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 191
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p9}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 192
    return-void
.end method

.method public mentionsSync(JJIIII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    invoke-direct/range {p0 .. p6}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 306
    const-string v0, "filter_by_author"

    invoke-virtual {v1, v0, p7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 307
    const-string v0, "filter_by_source"

    invoke-virtual {v1, v0, p8}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 308
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reply(JJLjava/lang/String;ZZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 253
    invoke-direct/range {p0 .. p7}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildReplyParams(JJLjava/lang/String;ZZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 254
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2, p8}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 255
    return-void
.end method

.method public replySync(JJLjava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 348
    invoke-direct/range {p0 .. p7}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildReplyParams(JJLjava/lang/String;ZZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 349
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public show(JJJIIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 11

    .prologue
    .line 103
    move-object v3, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v3

    .line 104
    const-string v2, "id"

    invoke-virtual {v3, v2, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 105
    const-string v2, "filter_by_author"

    move/from16 v0, p9

    invoke-virtual {v3, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 106
    sget-object v2, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "GET"

    move-object/from16 v0, p10

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 107
    return-void
.end method

.method public showBatch([JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildShowOrDestoryBatchParams([J)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 202
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 203
    return-void
.end method

.method public showBatchSync([J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildShowOrDestoryBatchParams([J)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 316
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showSync(JJJIII)Ljava/lang/String;
    .locals 11

    .prologue
    .line 267
    move-object v3, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v3

    .line 268
    const-string v2, "id"

    invoke-virtual {v3, v2, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 269
    const-string v2, "filter_by_author"

    move/from16 v0, p9

    invoke-virtual {v3, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 270
    sget-object v2, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "GET"

    invoke-virtual {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public timeline(JJIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 164
    invoke-direct/range {p0 .. p6}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 165
    const-string v2, "trim_user"

    if-eqz p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 166
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p8}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 167
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public timelineSync(JJIIZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    invoke-direct/range {p0 .. p6}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 297
    const-string v2, "trim_user"

    if-eqz p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 298
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toME(JJIIIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 147
    invoke-direct/range {p0 .. p6}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 148
    const-string v0, "filter_by_author"

    invoke-virtual {v1, v0, p7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 149
    const-string v0, "filter_by_source"

    invoke-virtual {v1, v0, p8}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 150
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p9}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 151
    return-void
.end method

.method public toMESync(JJIIII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    invoke-direct/range {p0 .. p6}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->buildTimeLineParamsBase(JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 287
    const-string v0, "filter_by_author"

    invoke-virtual {v1, v0, p7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 288
    const-string v0, "filter_by_source"

    invoke-virtual {v1, v0, p8}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 289
    sget-object v0, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/CommentsAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
