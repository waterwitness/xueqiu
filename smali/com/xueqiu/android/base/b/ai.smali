.class public final Lcom/xueqiu/android/base/b/ai;
.super Lcom/xueqiu/android/base/b/a;
.source "SnowBallClient.java"


# instance fields
.field public g:Lcom/xueqiu/android/base/b/aj;

.field public h:Lcom/xueqiu/android/base/b/an;

.field public i:Lcom/xueqiu/android/base/b/ak;

.field public j:Lcom/xueqiu/android/base/b/e;

.field public k:Lcom/xueqiu/android/base/b/d;

.field public l:Lcom/xueqiu/android/base/b/c;

.field public m:Lcom/xueqiu/android/base/b/am;

.field public n:Lcom/xueqiu/android/base/b/al;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/b/ae;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/a;-><init>()V

    .line 253
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    .line 255
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    .line 257
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    .line 259
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    .line 261
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    .line 263
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    .line 265
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    .line 267
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    .line 280
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    .line 282
    new-instance v0, Lcom/xueqiu/android/base/b/aj;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/base/b/aj;-><init>(Lcom/xueqiu/android/base/b/ae;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    .line 283
    new-instance v0, Lcom/xueqiu/android/base/b/an;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/base/b/an;-><init>(Lcom/xueqiu/android/base/b/ae;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    .line 284
    new-instance v0, Lcom/xueqiu/android/base/b/ak;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/base/b/ak;-><init>(Lcom/xueqiu/android/base/b/ae;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    .line 285
    new-instance v0, Lcom/xueqiu/android/base/b/e;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/base/b/e;-><init>(Lcom/xueqiu/android/base/b/ae;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    .line 286
    new-instance v0, Lcom/xueqiu/android/base/b/d;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/base/b/d;-><init>(Lcom/xueqiu/android/base/b/ae;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    .line 287
    new-instance v0, Lcom/xueqiu/android/base/b/c;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/base/b/c;-><init>(Lcom/xueqiu/android/base/b/ae;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    .line 288
    new-instance v0, Lcom/xueqiu/android/base/b/am;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/base/b/am;-><init>(Lcom/xueqiu/android/base/b/ae;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    .line 289
    new-instance v0, Lcom/xueqiu/android/base/b/al;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/base/b/al;-><init>(Lcom/xueqiu/android/base/b/ae;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    .line 290
    return-void
.end method

.method private a(IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "updated"

    .line 548
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "type"

    .line 549
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "cube_name"

    invoke-direct {v3, v4, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "cube_yield"

    invoke-direct {v3, v4, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "special_id"

    .line 552
    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "special_title"

    invoke-direct {v3, v4, p8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "id"

    .line 554
    invoke-static/range {p9 .. p10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "title"

    move-object/from16 v0, p11

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 558
    const-string v2, "/share/get_content"

    .line 5044
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 559
    new-instance v3, Lcom/xueqiu/android/base/b/ai$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/ai$1;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    .line 576
    move-object/from16 v0, p12

    invoke-static {v2, v1, v0, v3}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v1

    .line 578
    iget-object v2, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 579
    return-object v1
.end method

.method private a(JJLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 797
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "since_id"

    const-wide/16 v6, 0x0

    cmp-long v0, p1, v6

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 798
    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "max_id"

    const-wide/16 v6, 0x0

    cmp-long v0, p3, v6

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 799
    :goto_1
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "20"

    .line 800
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "split"

    const-string v4, "true"

    .line 801
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 803
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "comments"

    new-instance v3, Lcom/xueqiu/android/base/b/ai$8;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/ai$8;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    .line 804
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/ai$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 14044
    const/4 v2, 0x0

    invoke-static {p5, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 805
    invoke-static {v2, v1, p6, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 809
    return-object v0

    .line 798
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 799
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1750
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "areacode"

    invoke-direct {v0, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v5

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "telephone"

    .line 1752
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "voice"

    if-eqz p3, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v0, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 1756
    const-string v0, "/account/sms/send_verification_code"

    .line 27044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1756
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1, p5, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1757
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1758
    return-object v0

    .line 1752
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/TopicInfo;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/TopicInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xueqiu/android/base/b/aj;->a(IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Lcom/xueqiu/android/base/b/ai;->a(IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/base/b/an;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/an;->a(ILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Lcom/xueqiu/android/base/b/ai;->a(IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(JIIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    .line 4205
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide v2, p1

    move/from16 v5, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/xueqiu/android/base/b/aj;->a(JLjava/lang/String;IJJIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 325
    return-object v0
.end method

.method public final a(JIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/aj;->a(JIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(JIILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 747
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 748
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "20"

    .line 749
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 750
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    invoke-direct {v2, v3, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "asc"

    .line 752
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "split"

    const-string v4, "true"

    .line 753
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 755
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "comments"

    new-instance v3, Lcom/xueqiu/android/base/b/ai$7;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/ai$7;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    .line 756
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/ai$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 757
    const-string v2, "/statuses/comments"

    .line 13044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-static {v2, v0, p6, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 761
    return-object v0
.end method

.method public final a(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/statuses/comments"

    .line 14115
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?request_method=get&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type=status&count=20&page=1&reply=1&asc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&split=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/cubes/discover/material/cube/list"

    .line 15115
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 823
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?request_method=get&mtype=1&mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&count=20&page=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/favorites/exists"

    .line 16115
    invoke-static {v3, v5}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 829
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?request_method=get&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/statuses/comments_excellent"

    .line 17115
    invoke-static {v4, v5}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 832
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?request_method=get&id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&count=5&page=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 838
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "#47bce5c74f#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#47bce5c74f#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#47bce5c74f#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "api"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tasktype"

    const-string v4, "par"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 847
    const-string v0, "/apimerge/result"

    .line 18044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 847
    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v0, v1, p4, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 848
    new-instance v1, Lcom/xueqiu/android/base/b/z;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/z;-><init>()V

    .line 18198
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 849
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 851
    return-object v0
.end method

.method public final a(JILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3048
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 3050
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3051
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 3052
    const-string v2, "updateTime"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3054
    :cond_0
    if-ltz p3, :cond_1

    .line 3055
    const-string v2, "category"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3057
    :cond_1
    if-eqz p4, :cond_2

    .line 3058
    const-string v2, "market"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3061
    :cond_2
    const-string v2, "/cubes/discover/rank/cube/filter"

    .line 50078
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3061
    invoke-static {v2, v1, p5, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3066
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3067
    return-object v0
.end method

.method public final a(JJILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 899
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 900
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "comment_id"

    .line 901
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "asc"

    const-string v4, "true"

    .line 902
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "20"

    .line 903
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 904
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 906
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "comments"

    new-instance v3, Lcom/xueqiu/android/base/b/ai$10;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/ai$10;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    .line 907
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/ai$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 908
    const-string v2, "/statuses/talks"

    .line 21044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-static {v2, v0, p6, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 909
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 911
    return-object v0
.end method

.method public final a(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 776
    const-string v6, "/comments/receive"

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(JJLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/aj;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/Portfolio;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/Portfolio;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ak;->a(JLjava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Reward;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Reward;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2341
    const/4 v0, 0x6

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "to_id"

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2343
    :goto_0
    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "to_type"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "order_by"

    const-string v4, "snowcoin"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 2346
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "size"

    const-string v4, "20"

    .line 2347
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "base_profile_user"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 2350
    const-string v0, "/donates/list"

    .line 43044
    invoke-static {v0, v6}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2350
    new-instance v2, Lcom/xueqiu/android/base/b/ai$11;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/ai$11;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    invoke-static {v0, v1, p6, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2378
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2379
    return-object v0

    .line 2343
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    const/4 v1, 0x6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-wide v6, p1

    move-object/from16 v8, p3

    move-object/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Lcom/xueqiu/android/base/b/ai;->a(IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2823
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "uid"

    .line 2824
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "platform_id"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page_id"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "promotion_id"

    .line 2827
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 2829
    const-string v1, "/promotion/display_adrm"

    .line 50045
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2829
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p7, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2831
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2832
    return-object v0
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2797
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "uid"

    .line 2798
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "platform_id"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page_id"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 2802
    const-string v1, "/promotion/display_ad"

    .line 49044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2802
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2804
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2805
    return-object v0
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2886
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "uid"

    .line 2887
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "platform_id"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page_id"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pos_id"

    invoke-direct {v2, v3, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 2892
    const-string v1, "/promotion/search_ad"

    .line 50048
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2892
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p6, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2894
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2895
    return-object v0
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2779
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "page_id"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "promotion_id"

    .line 2781
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "action_time"

    .line 2782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "platform_id"

    invoke-direct {v2, v3, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "version"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "brand"

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "network"

    invoke-direct {v2, v3, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 2789
    const-string v1, "/promotion/show_log"

    .line 48044
    invoke-static {v1, v6}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2789
    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v1, v0, p7, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2790
    sget-object v1, Lcom/android/volley/o;->a:Lcom/android/volley/o;

    .line 48290
    iput-object v1, v0, Lcom/xueqiu/android/base/b/x;->l:Lcom/android/volley/o;

    .line 2791
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2792
    return-object v0
.end method

.method public final a(JZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xueqiu/android/base/b/d;->a(JZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(JZLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2000
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "to_id"

    .line 2001
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v5

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "type"

    if-eqz p3, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    .line 36069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v4

    .line 36182
    iget-object v4, v4, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 2003
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "url"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 2006
    const-string v0, "/photo/im/forward"

    .line 37044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2006
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/PhotoUploadResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1, p5, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2007
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2008
    return-object v0

    .line 2001
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method public final a(J[JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/message/model/BatchResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/message/model/BatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xueqiu/android/base/b/d;->b(J[JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 583
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 584
    new-array v1, v3, [Lorg/apache/http/message/BasicNameValuePair;

    .line 585
    const-string v2, "/statuses/switch"

    .line 6044
    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-static {v2, v1, p1, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 590
    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/xueqiu/android/common/model/parser/Parser",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/xueqiu/android/base/b/ak;->a(Lcom/xueqiu/android/base/b/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 998
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xueqiu/android/base/b/an;->a(Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1442
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/lang/String;IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedGroup",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedGroup",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3134
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "q"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sort"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 3137
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "15"

    .line 3138
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 3141
    const-string v1, "/hot_event/search"

    .line 50083
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3141
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v3, "list"

    new-instance v4, Lcom/xueqiu/android/base/b/ai$5;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/b/ai$5;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    .line 3142
    invoke-virtual {v4}, Lcom/xueqiu/android/base/b/ai$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 3141
    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3143
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3144
    return-object v0
.end method

.method public final a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3119
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 3121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3122
    const-string v2, "type"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3123
    const-string v2, "updated"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3124
    const-string v2, "/mobile_config/content"

    .line 50082
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3124
    invoke-static {v2, v1, p4, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3129
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3130
    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 632
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "start"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 639
    const-string v1, "/recommend/pofriends"

    .line 7044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 639
    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 640
    new-instance v1, Lcom/xueqiu/android/base/b/z;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/z;-><init>()V

    .line 7198
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 641
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 642
    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/base/b/r;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;>;",
            "Lcom/xueqiu/android/base/b/r;",
            ")",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1393
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1394
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/util/List;Ljava/util/List;ZZLcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/base/b/r;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IIJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2463
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;IIJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/aj;->a(Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2766
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "page_id"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "platform_id"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "date"

    .line 2769
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "screen_type"

    .line 2770
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 2772
    const-string v1, "/promotion/display_cache"

    .line 47044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2772
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p6, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2773
    sget-object v1, Lcom/android/volley/o;->a:Lcom/android/volley/o;

    .line 47290
    iput-object v1, v0, Lcom/xueqiu/android/base/b/x;->l:Lcom/android/volley/o;

    .line 2774
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2775
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 623
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "env"

    .line 624
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "timestamp"

    .line 625
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 626
    invoke-static {p2, v1, p5, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 628
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 614
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "env"

    .line 615
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 616
    invoke-static {p2, v1, p3, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 618
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    .line 4454
    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/xueqiu/android/base/b/aj;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 428
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/OAuthBindResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/OAuthBindResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/base/b/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-static {p1}, Lcom/xueqiu/android/base/util/as;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1762
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "areacode"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "telephone"

    .line 1764
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "code"

    .line 1765
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1767
    const-string v1, "/account/sms/verify_code"

    .line 28044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1767
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1768
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1769
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1696
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "areacode"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "telephone"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "passwd1"

    .line 1699
    invoke-static {p3}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "passwd2"

    .line 1700
    invoke-static {p3}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nickname"

    invoke-direct {v2, v3, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "profile_image_url"

    invoke-direct {v2, v3, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1705
    const-string v1, "/account/signup_by_telephone"

    .line 26044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1705
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/LoginResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p7, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1707
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1708
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1675
    const/16 v1, 0xc

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "telephone"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "passwd1"

    .line 1677
    invoke-static {p2}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "passwd2"

    .line 1678
    invoke-static {p2}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "source"

    invoke-direct {v3, v4, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "openid"

    invoke-direct {v3, v4, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "nickname"

    invoke-direct {v3, v4, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "profile_image_url"

    invoke-direct {v3, v4, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token2"

    invoke-direct {v3, v4, p8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "expireIn"

    .line 1684
    invoke-static/range {p9 .. p10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "oauth_nickname"

    move-object/from16 v0, p11

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "version"

    const-string v5, "2"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "access_token"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 1689
    const-string v2, "/account/oauth/signup"

    .line 25044
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1689
    new-instance v3, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v4, Lcom/xueqiu/android/common/model/LoginResult;

    invoke-direct {v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    move-object/from16 v0, p12

    invoke-static {v2, v1, v0, v3}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v1

    .line 1690
    iget-object v2, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1691
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2977
    const-string v0, "post"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50069
    invoke-static {p1, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2978
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v2, Lcom/google/gson/JsonElement;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, p3, p5, v1}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2984
    :goto_0
    new-instance v1, Lcom/xueqiu/android/base/b/y;

    invoke-direct {v1, p4}, Lcom/xueqiu/android/base/b/y;-><init>(I)V

    .line 50071
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 2985
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2986
    return-object v0

    .line 50070
    :cond_0
    invoke-static {p1, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2981
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v2, Lcom/google/gson/JsonElement;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, p3, p5, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2949
    const-string v0, "post"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50063
    invoke-static {p1, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2950
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v2, Lcom/google/gson/JsonElement;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, p3, p4, v1}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2956
    :goto_0
    new-instance v1, Lcom/xueqiu/android/base/b/y;

    const/16 v2, 0x1388

    invoke-direct {v1, v2}, Lcom/xueqiu/android/base/b/y;-><init>(I)V

    .line 50065
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 2958
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2959
    return-object v0

    .line 50064
    :cond_0
    invoke-static {p1, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2953
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v2, Lcom/google/gson/JsonElement;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, p3, p4, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xueqiu/android/base/b/d;->a(Ljava/lang/String;Ljava/lang/String;[JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1971
    const-string v0, "/upload/mobile/offlineFile"

    invoke-static {v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1972
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v2, "isSuccess"

    const-class v3, Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    invoke-static {v0, p2, p3, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1976
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1977
    const-string v2, "X-category"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    const-string v2, "X-uid"

    .line 35069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 35077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 1978
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    const-string v2, "X-isCompress"

    const-string v3, "tar"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    const-string v2, "Content-Encoding"

    const-string v3, "UTF-8"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    const-string v2, "Xueqiu Android %s %s %s %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 36041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    .line 1988
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xueqiu/android/base/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1989
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 1990
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 1991
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->h()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, "_"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1987
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1992
    const-string v3, "User-Agent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/util/Map;)V

    .line 1995
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1996
    return-object v0
.end method

.method public final a(Ljava/util/List;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2990
    const-string v0, "/apimerge/result"

    .line 50073
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2990
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "api"

    const-string v4, "#47bce5c74f#"

    .line 2992
    invoke-static {p1, v4}, Lcom/xueqiu/android/base/util/au;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 2990
    invoke-static {v0, v1, p2, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2994
    new-instance v1, Lcom/xueqiu/android/base/b/z;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/z;-><init>()V

    .line 50074
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 2995
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2996
    return-object v0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/util/List;Ljava/util/List;ZZLcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/base/b/r;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonArray;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonArray;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/util/List;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p2, p1}, Lcom/xueqiu/android/base/b/an;->a(Lcom/xueqiu/android/base/b/p;Z)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a([BLjava/lang/String;JZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "JZ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 33069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v2

    .line 33182
    iget-object v2, v2, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 1955
    const-string v3, "/photo/im/upload"

    .line 34044
    invoke-static {v3, v7}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1956
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1957
    const-string v3, "?%s=%s&%s=%s&%s=%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "to_id"

    aput-object v6, v5, v7

    .line 1958
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "type"

    aput-object v6, v5, v1

    const/4 v6, 0x3

    if-eqz p5, :cond_0

    .line 1959
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    const-string v1, "access_token"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    aput-object v2, v5, v0

    .line 1957
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    new-instance v0, Lcom/e/a/a/j;

    sget v1, Lcom/e/a/a/e;->b:I

    invoke-direct {v0, v1, v7}, Lcom/e/a/a/j;-><init>(IB)V

    .line 1962
    const-string v1, "file"

    new-instance v2, Lcom/e/a/a/a/b;

    invoke-direct {v2, p1, p2}, Lcom/e/a/a/a/b;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/e/a/a/j;->a(Ljava/lang/String;Lcom/e/a/a/a/c;)V

    .line 1963
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/base/b/k;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/base/b/k;-><init>(Lorg/apache/http/HttpEntity;)V

    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/PhotoUploadResult;

    invoke-direct {v0, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v2, p6, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1965
    new-instance v1, Lcom/xueqiu/android/base/b/ad;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/ad;-><init>()V

    .line 34198
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 1966
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1967
    return-object v0

    :cond_0
    move v0, v1

    .line 1958
    goto :goto_0
.end method

.method public final a([BLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1945
    new-instance v0, Lcom/e/a/a/j;

    sget v1, Lcom/e/a/a/e;->b:I

    invoke-direct {v0, v1, v3}, Lcom/e/a/a/j;-><init>(IB)V

    .line 1946
    const-string v1, "file"

    new-instance v2, Lcom/e/a/a/a/b;

    invoke-direct {v2, p1, p2}, Lcom/e/a/a/a/b;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/e/a/a/j;->a(Ljava/lang/String;Lcom/e/a/a/a/c;)V

    .line 1947
    const-string v1, "/photo/upload"

    .line 32044
    invoke-static {v1, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1947
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/PhotoUploadResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1948
    new-instance v1, Lcom/xueqiu/android/base/b/ad;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/ad;-><init>()V

    .line 32198
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 1949
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1950
    return-object v0
.end method

.method public final a([Ljava/lang/Long;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Long;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/base/b/an;->c([Ljava/lang/Long;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a([Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/base/b/ak;->c([Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a([Ljava/lang/String;[Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/an;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/x;)V
    .locals 5

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    new-instance v1, Lcom/xueqiu/android/base/b/ai$12;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/base/b/ai$12;-><init>(Lcom/xueqiu/android/base/b/ai;Lcom/xueqiu/android/base/b/x;)V

    .line 50050
    iget-object v2, v0, Lcom/android/volley/p;->b:Ljava/util/Set;

    monitor-enter v2

    .line 50051
    :try_start_0
    iget-object v0, v0, Lcom/android/volley/p;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/n;

    .line 50052
    invoke-interface {v1, v0}, Lcom/android/volley/q;->a(Lcom/android/volley/n;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50058
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/volley/n;->h:Z

    goto :goto_0

    .line 50056
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    .line 3001
    new-instance v0, Lcom/xueqiu/android/base/b/ai$13;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/base/b/ai$13;-><init>(Lcom/xueqiu/android/base/b/ai;Z)V

    .line 3012
    new-instance v1, Lcom/xueqiu/android/base/b/ai$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/ai$14;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    .line 3023
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3024
    const-string v3, "on"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3025
    const-string v3, "/etc/mobile/state"

    .line 50076
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 3025
    invoke-static {v3, v2, v0, v1}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3027
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3028
    return-void
.end method

.method public final b(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/base/b/an;->e(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b(JIILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/SNBJSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/SNBJSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2064
    const-string v0, "/reportspam/create"

    .line 40044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2066
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "id"

    .line 2067
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "type"

    .line 2068
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "spamtype"

    .line 2069
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "irre_symbol"

    invoke-direct {v3, v4, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 2072
    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v0, v1, p6, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2073
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2074
    return-object v0
.end method

.method public final b(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 871
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 872
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "20"

    .line 873
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 874
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 876
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "comments"

    new-instance v3, Lcom/xueqiu/android/base/b/ai$9;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/ai$9;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    .line 877
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/ai$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 879
    const-string v2, "/statuses/comments_excellent"

    .line 20044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 879
    invoke-static {v2, v0, p4, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 881
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 883
    return-object v0
.end method

.method public final b(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 792
    const-string v6, "/comments/send"

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(JJLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/aj;->b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v9, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Lcom/xueqiu/android/base/b/ai;->a(IJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2810
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "uid"

    .line 2811
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "platform_id"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page_id"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 2815
    const-string v1, "/promotion/display_ad_batch"

    .line 50044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2815
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2817
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2818
    return-object v0
.end method

.method public final b(JZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xueqiu/android/base/b/d;->b(JZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/b/an;->a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xueqiu/android/base/b/an;->b(Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/stock/myandanalyst"

    .line 8115
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&request_method=get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/recommend/user/stock_hot_user"

    .line 9115
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?symbol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&start=0&count=6&request_method=get"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/imgroups_recommend/show"

    .line 10115
    invoke-static {v3, v5}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 656
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?symbol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&request_method=get"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/recommend/pofriends"

    .line 11115
    invoke-static {v4, v5}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&type=1&start=0&count=0&request_method=get"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "#47bce5c74f#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#47bce5c74f#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#47bce5c74f#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 670
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "api"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tasktype"

    const-string v4, "seq"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 675
    const-string v0, "/apimerge/result"

    .line 12044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 675
    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v0, v1, p2, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 676
    new-instance v1, Lcom/xueqiu/android/base/b/z;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/z;-><init>()V

    .line 12198
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 677
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 678
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/an;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1742
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1843
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1856
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "source"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "oauth_user_id"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-direct {v2, v3, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_id"

    const-string v4, "JtXbaMn7eP"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "open_access_token"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_secret"

    const-string v4, "txsDfr9FphRSPov5oQou74"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "grant_type"

    const-string v4, "password"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "open_id"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1866
    const-string v1, "/provider/oauth/token"

    invoke-static {v1}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1867
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/LoginResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p6, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1869
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1870
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2964
    const-string v0, "post"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50067
    invoke-static {p1, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2965
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v2, Lcom/google/gson/JsonElement;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, p3, p4, v1}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2971
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2972
    return-object v0

    .line 50068
    :cond_0
    invoke-static {p1, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2968
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v2, Lcom/google/gson/JsonElement;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, p3, p4, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0
.end method

.method public final b([BLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/FileUploadResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/FileUploadResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/upload/image"

    .line 42044
    invoke-static {v1, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2089
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2090
    const-string v1, "?ssid=c499e6a8-9756-4b0f-b483-e70a3dc0ff76&appId=community&scale=advanced:split"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    new-instance v1, Lcom/e/a/a/j;

    sget v2, Lcom/e/a/a/e;->b:I

    invoke-direct {v1, v2, v3}, Lcom/e/a/a/j;-><init>(IB)V

    .line 2094
    const-string v2, "file"

    new-instance v3, Lcom/e/a/a/a/b;

    invoke-direct {v3, p1, p2}, Lcom/e/a/a/a/b;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/e/a/a/j;->a(Ljava/lang/String;Lcom/e/a/a/a/c;)V

    .line 2095
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/FileUploadResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2096
    new-instance v1, Lcom/xueqiu/android/base/b/ad;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/ad;-><init>()V

    .line 42198
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 2097
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2098
    return-object v0
.end method

.method public final b([Ljava/lang/Long;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Long;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/base/b/d;->a([Ljava/lang/Long;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b([Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3071
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v0, Lcom/xueqiu/android/base/b/ai$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/ai$2;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    .line 3072
    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/ai$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 3074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3075
    array-length v4, p1

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, p1, v0

    .line 3076
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3077
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3075
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3079
    :cond_0
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 3080
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3082
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3083
    const-string v4, "types"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3085
    const-string v3, "/user/setting/select"

    .line 50079
    invoke-static {v3, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3085
    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3090
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3091
    return-object v0
.end method

.method public final c(JILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 994
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/xueqiu/android/base/b/an;->a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public final c(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1646
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "gmt"

    .line 1647
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 1648
    const-string v1, "/user/setting/timezone"

    .line 24044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1648
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1649
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1650
    return-object v0
.end method

.method public final c(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2847
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "uid"

    .line 2848
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "id"

    .line 2849
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 2851
    const-string v1, "/etc/prompt/bomb_box/show_log"

    .line 50047
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2851
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2853
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2854
    return-object v0
.end method

.method public final c(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/RewardCash;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/RewardCash;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/aj;->g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xueqiu/android/base/b/c;->a(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/b/an;->d(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonArray;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonArray;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/util/List;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/SNBJSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/SNBJSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "xq_anonymous_since_2014"

    invoke-static {v3}, Lcom/xueqiu/android/base/util/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1724
    const/16 v3, 0x8

    new-array v3, v3, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "sid"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "sign"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "timestamp"

    .line 1727
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v0, 0x3

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "version"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v0

    const/4 v0, 0x4

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    const-string v4, "1"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v0

    const/4 v0, 0x5

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_id"

    const-string v4, "JtXbaMn7eP"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v0

    const/4 v0, 0x6

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_secret"

    const-string v4, "txsDfr9FphRSPov5oQou74"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v0

    const/4 v0, 0x7

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "grant_type"

    const-string v4, "password"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v0

    .line 1734
    const-string v0, "/provider/oauth/token"

    invoke-static {v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1735
    new-instance v1, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v1}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v0, v3, p3, v1}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1737
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1738
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1746
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1909
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "telephone"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "areacode"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "password"

    .line 1912
    invoke-static {p3}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_id"

    const-string v4, "JtXbaMn7eP"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_secret"

    const-string v4, "txsDfr9FphRSPov5oQou74"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "grant_type"

    const-string v4, "password"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1918
    const-string v1, "/provider/oauth/token"

    invoke-static {v1}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1919
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/LoginResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1921
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1922
    return-object v0
.end method

.method public final d(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/base/b/c;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final d(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/comments/destroy/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19044
    invoke-static {v0, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 864
    new-array v1, v2, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1, p3, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 865
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 866
    return-object v0
.end method

.method public final d(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2873
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "uid"

    .line 2874
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "promotion_id"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 2878
    const-string v1, "/promotion/click_log"

    invoke-static {v1}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2880
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2881
    return-object v0
.end method

.method public final d(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/b/an;->i(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1791
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "areacode"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "telephone"

    .line 1793
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1794
    const-string v1, "/account/get_bind_user"

    .line 29044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1794
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1795
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1796
    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2012
    const/4 v0, 0x6

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v0, 0x0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "username"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "password"

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 2014
    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_id"

    const-string v4, "JtXbaMn7eP"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_secret"

    const-string v4, "txsDfr9FphRSPov5oQou74"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "grant_type"

    const-string v4, "password"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 2020
    const-string v0, "/provider/oauth/token"

    .line 2021
    invoke-static {v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/LoginResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 2020
    invoke-static {v0, v1, p4, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2023
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2024
    return-object v0

    .line 2014
    :cond_0
    invoke-static {p2}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 915
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 916
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 917
    const-string v1, "/comments/like"

    .line 22044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 917
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 918
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 919
    return-object v0
.end method

.method public final e(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Remind;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Remind;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2031
    const-string v0, "/remind/unread"

    .line 38044
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2031
    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/community/model/Remind;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1, p1, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2032
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2033
    return-object v0
.end method

.method public final e(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/LoginResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1809
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_id"

    const-string v4, "JtXbaMn7eP"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_secret"

    const-string v4, "txsDfr9FphRSPov5oQou74"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "grant_type"

    const-string v4, "refresh_token"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "refresh_token"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1815
    const-string v1, "/provider/oauth/token"

    invoke-static {v1}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1816
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/LoginResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1818
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1819
    return-object v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1800
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "nickname"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1803
    const-string v1, "/account/verify_nickname"

    .line 30044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1803
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1804
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1805
    return-object v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2078
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sid"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "version"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "channel"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 2083
    const-string v1, "/mobile_client/setting"

    .line 41044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2083
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2084
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2085
    return-object v0
.end method

.method public final f(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 923
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 924
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 925
    const-string v1, "/comments/unlike"

    .line 23044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 925
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 926
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 927
    return-object v0
.end method

.method public final f(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2920
    const-string v0, "/app/mobile_module"

    invoke-static {v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1, p1, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2922
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2923
    return-object v0
.end method

.method public final f(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1883
    const-string v0, "https://api.weixin.qq.com/sns/oauth2/access_token"

    .line 1884
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appid"

    const-string v5, "wx8be10642d9baf61f"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "secret"

    const-string v5, "5b908b2ca133d7a9aeaa075146da6869"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "code"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "grant_type"

    const-string v5, "authorization_code"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 1892
    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v0, v1, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1893
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1894
    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/SNBJSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/SNBJSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1823
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "email"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1827
    const-string v1, "/account/find_passwd"

    .line 31044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1827
    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1828
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1829
    return-object v0
.end method

.method public final g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/an;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3095
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v1, Lcom/xueqiu/android/base/b/ai$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/ai$3;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    .line 3096
    invoke-virtual {v1}, Lcom/xueqiu/android/base/b/ai$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 3097
    const-string v1, "/privacy/show"

    .line 50080
    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3098
    new-array v2, v2, [Lorg/apache/http/message/BasicNameValuePair;

    .line 3097
    invoke-static {v1, v2, p1, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3102
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3103
    return-object v0
.end method

.method public final g(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/users/search"

    .line 43115
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?count=4&q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&request_method=get&hl=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/stock/search"

    .line 44115
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 2389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?size=4&code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&request_method=get"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/cube/search"

    .line 45115
    invoke-static {v3, v5}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 2394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?count=3&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&request_method=get"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#47bce5c74f#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#47bce5c74f#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2399
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "api"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tasktype"

    const-string v4, "par"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 2403
    const-string v0, "/apimerge/result"

    .line 46044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2403
    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v0, v1, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2404
    new-instance v1, Lcom/xueqiu/android/base/b/z;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/z;-><init>()V

    .line 46198
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 2405
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2406
    return-object v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1898
    const-string v0, "https://api.weixin.qq.com/sns/userinfo"

    .line 1899
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "access_token"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "openid"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 1903
    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v0, v1, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1904
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/android/volley/n;)Lcom/android/volley/n;

    .line 1905
    return-object v0
.end method

.method public final h(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 974
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/an;->d(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3107
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v1, Lcom/xueqiu/android/base/b/ai$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/ai$4;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    .line 3108
    invoke-virtual {v1}, Lcom/xueqiu/android/base/b/ai$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 3109
    const-string v1, "/friendships/groups"

    .line 50081
    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3110
    new-array v2, v2, [Lorg/apache/http/message/BasicNameValuePair;

    .line 3109
    invoke-static {v1, v2, p1, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3114
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3115
    return-object v0
.end method

.method public final h(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/am;->c(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final i(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 978
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1, p3}, Lcom/xueqiu/android/base/b/an;->a([Ljava/lang/Long;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/AdBanner;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/AdBanner;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3148
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ad_type"

    const-string v3, "5"

    .line 3149
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 3151
    const-string v1, "/tc/snowx/ad/list"

    .line 50084
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3152
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "result_data"

    new-instance v4, Lcom/xueqiu/android/base/b/ai$6;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/b/ai$6;-><init>(Lcom/xueqiu/android/base/b/ai;)V

    .line 3154
    invoke-virtual {v4}, Lcom/xueqiu/android/base/b/ai$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 3151
    invoke-static {v1, v0, p1, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3155
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3156
    return-object v0
.end method

.method public final i(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/SessionToken;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/SessionToken;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2899
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "api_path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 2902
    const-string v1, "/provider/session/token"

    .line 50049
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2902
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/cube/model/SessionToken;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2903
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2904
    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/am;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final j(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/an;->e(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final j(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3212
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 3214
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3215
    const-string v2, "top_type"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3216
    const-string v2, "/valueadded/top/cancel"

    .line 50086
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3216
    invoke-static {v2, v1, p1, v0}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3221
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3222
    return-object v0
.end method

.method public final j(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2927
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "version"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 2930
    const-string v1, "/mobile/android/isgray"

    .line 50060
    invoke-static {v1, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2930
    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2931
    sget-object v1, Lcom/android/volley/o;->a:Lcom/android/volley/o;

    .line 50061
    iput-object v1, v0, Lcom/xueqiu/android/base/b/x;->l:Lcom/android/volley/o;

    .line 2932
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2933
    return-object v0
.end method

.method public final k(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/FriendshipGroup;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/FriendshipGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/an;->g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3342
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 3344
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "card_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 3348
    const-string v2, "/rec/card/cancel.json"

    .line 50087
    invoke-static {v2, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3348
    invoke-static {v2, v1, p2, v0}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3353
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3354
    return-object v0
.end method

.method public final l(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/SimpleFund;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/SimpleFund;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/ak;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final m(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Remind;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Remind;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 2037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2038
    cmp-long v1, v4, v4

    if-lez v1, :cond_0

    .line 2039
    const-string v1, "htl_since_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    :cond_0
    cmp-long v1, p1, v4

    if-lez v1, :cond_1

    .line 2042
    const-string v1, "ptl_since_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    :cond_1
    const-string v1, "/remind/unread"

    .line 39044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2045
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/community/model/Remind;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2046
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2047
    return-object v0
.end method

.method public final n(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/d;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final o(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/d;->d(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final p(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/d;->e(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final q(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/d;->g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final r(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2836
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "uid"

    .line 2837
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 2839
    const-string v1, "/etc/prompt/bomb_box/show"

    .line 50046
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2839
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2841
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 2842
    return-object v0
.end method

.method public final s(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3031
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 3033
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3034
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 3035
    const-string v2, "timeStamp"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3038
    :cond_0
    const-string v2, "/cubes/discover/element/buttons"

    .line 50077
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3038
    invoke-static {v2, v1, p3, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3043
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3044
    return-object v0
.end method

.method public final t(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3190
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 3192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3193
    const-string v2, "top_type"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3194
    const-string v2, "status_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3195
    const-string v2, "/valueadded/top/add"

    .line 50085
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3195
    invoke-static {v2, v1, p3, v0}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3200
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ai;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 3201
    return-object v0
.end method
