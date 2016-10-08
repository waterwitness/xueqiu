.class public final Lcom/xiaomi/e/e/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/e/e/c;->a:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/xiaomi/e/a;)Lcom/xiaomi/e/c/b;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 0
    const-string v0, ""

    const-string v3, "id"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    const-string v3, "to"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    const-string v3, "from"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    const-string v3, "chid"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, ""

    const-string v3, "type"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/e/c/c;->a(Ljava/lang/String;)Lcom/xiaomi/e/c/c;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v10, ""

    invoke-interface {p0, v10, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move-object v3, v2

    move-object v1, v2

    :cond_1
    :goto_1
    if-nez v0, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    const-string v11, "error"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {p0}, Lcom/xiaomi/e/e/c;->f(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/k;

    move-result-object v3

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/xiaomi/e/c/b;

    invoke-direct {v1}, Lcom/xiaomi/e/c/b;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/e/e/c;->g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/a;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/xiaomi/e/c/b;->a(Lcom/xiaomi/e/c/a;)V

    goto :goto_1

    :cond_3
    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "iq"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_7

    sget-object v0, Lcom/xiaomi/e/c/c;->a:Lcom/xiaomi/e/c/c;

    if-eq v0, v8, :cond_5

    sget-object v0, Lcom/xiaomi/e/c/c;->b:Lcom/xiaomi/e/c/c;

    if-ne v0, v8, :cond_6

    :cond_5
    new-instance v0, Lcom/xiaomi/e/e/d;

    invoke-direct {v0}, Lcom/xiaomi/e/e/d;-><init>()V

    .line 32000
    iput-object v4, v0, Lcom/xiaomi/e/c/e;->q:Ljava/lang/String;

    .line 33000
    iput-object v6, v0, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 34000
    iput-object v5, v0, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 0
    sget-object v1, Lcom/xiaomi/e/c/c;->d:Lcom/xiaomi/e/c/c;

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/c/b;->a(Lcom/xiaomi/e/c/c;)V

    .line 35000
    iput-object v7, v0, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 0
    new-instance v1, Lcom/xiaomi/e/c/k;

    sget-object v3, Lcom/xiaomi/e/c/l;->e:Lcom/xiaomi/e/c/l;

    invoke-direct {v1, v3}, Lcom/xiaomi/e/c/k;-><init>(Lcom/xiaomi/e/c/l;)V

    .line 36000
    iput-object v1, v0, Lcom/xiaomi/e/c/e;->v:Lcom/xiaomi/e/c/k;

    .line 0
    invoke-virtual {p1, v0}, Lcom/xiaomi/e/a;->a(Lcom/xiaomi/e/c/e;)V

    const-string v0, "iq usage error. send packet in packet parser."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_6
    new-instance v0, Lcom/xiaomi/e/e/e;

    invoke-direct {v0}, Lcom/xiaomi/e/e/e;-><init>()V

    .line 37000
    :goto_3
    iput-object v4, v0, Lcom/xiaomi/e/c/e;->q:Ljava/lang/String;

    .line 38000
    iput-object v5, v0, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 39000
    iput-object v7, v0, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 40000
    iput-object v6, v0, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v8}, Lcom/xiaomi/e/c/b;->a(Lcom/xiaomi/e/c/c;)V

    .line 41000
    iput-object v3, v0, Lcom/xiaomi/e/c/e;->v:Lcom/xiaomi/e/c/k;

    .line 0
    invoke-virtual {v0, v9}, Lcom/xiaomi/e/c/b;->a(Ljava/util/Map;)V

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_3
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/e;
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    const-string v0, "1"

    const-string v3, ""

    const-string v5, "s"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    const-string v3, "chid"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    const-string v3, "id"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    const-string v3, "from"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, ""

    const-string v3, "to"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, ""

    const-string v3, "type"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0, v5, v8}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Lcom/xiaomi/push/service/bb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;

    move-result-object v0

    move-object v3, v0

    :goto_0
    if-nez v3, :cond_0

    new-instance v0, Lcom/xiaomi/e/t;

    const-string v1, "the channel id is wrong while receiving a encrypted message"

    invoke-direct {v0, v1}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    move-object v2, v4

    :cond_1
    :goto_1
    if-nez v0, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-ne v4, v12, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "s"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Lcom/xiaomi/e/t;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    new-instance v0, Lcom/xiaomi/e/t;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    new-instance v0, Lcom/xiaomi/e/c/d;

    invoke-direct {v0}, Lcom/xiaomi/e/c/d;-><init>()V

    .line 1000
    iput-object v5, v0, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 2000
    iput-boolean v1, v0, Lcom/xiaomi/e/c/d;->m:Z

    .line 3000
    iput-object v7, v0, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 4000
    iput-object v8, v0, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 5000
    iput-object v6, v0, Lcom/xiaomi/e/c/e;->q:Ljava/lang/String;

    .line 6000
    iput-object v9, v0, Lcom/xiaomi/e/c/d;->a:Ljava/lang/String;

    .line 0
    new-instance v1, Lcom/xiaomi/e/c/a;

    const-string v3, "s"

    invoke-direct {v1, v3}, Lcom/xiaomi/e/c/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/e/c/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/c/d;->a(Lcom/xiaomi/e/c/a;)V

    :goto_2
    return-object v0

    :cond_5
    iget-object v4, v3, Lcom/xiaomi/push/service/bd;->i:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/xiaomi/push/service/q;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v2}, Lcom/xiaomi/push/service/q;->b([BLjava/lang/String;)[B

    move-result-object v4

    .line 7000
    sget-object v2, Lcom/xiaomi/e/e/c;->a:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v2, :cond_6

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/e/e/c;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v11, 0x1

    invoke-interface {v2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    sget-object v2, Lcom/xiaomi/e/e/c;->a:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 0
    sget-object v2, Lcom/xiaomi/e/e/c;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    sget-object v2, Lcom/xiaomi/e/e/c;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2}, Lcom/xiaomi/e/e/c;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/e;

    move-result-object v2

    goto/16 :goto_1

    .line 7000
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    .line 0
    :cond_7
    if-ne v4, v13, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v10, "message"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    goto/16 :goto_1

    :cond_8
    if-eqz v2, :cond_9

    move-object v0, v2

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/xiaomi/e/t;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v3, Lcom/xiaomi/e/c/d;

    invoke-direct {v3}, Lcom/xiaomi/e/c/d;-><init>()V

    const-string v0, ""

    const-string v5, "id"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "ID_NOT_AVAILABLE"

    .line 8000
    :cond_b
    iput-object v0, v3, Lcom/xiaomi/e/c/e;->q:Ljava/lang/String;

    .line 0
    const-string v0, ""

    const-string v5, "to"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9000
    iput-object v0, v3, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 0
    const-string v0, ""

    const-string v5, "from"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10000
    iput-object v0, v3, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 0
    const-string v0, ""

    const-string v5, "chid"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11000
    iput-object v0, v3, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 0
    const-string v0, ""

    const-string v5, "appid"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12000
    iput-object v0, v3, Lcom/xiaomi/e/c/d;->h:Ljava/lang/String;

    .line 0
    :try_start_1
    const-string v0, ""

    const-string v5, "transient"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_4
    :try_start_2
    const-string v5, ""

    const-string v6, "seq"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 13000
    iput-object v5, v3, Lcom/xiaomi/e/c/d;->i:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 0
    :cond_c
    :goto_5
    :try_start_3
    const-string v5, ""

    const-string v6, "mseq"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 14000
    iput-object v5, v3, Lcom/xiaomi/e/c/d;->j:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 0
    :cond_d
    :goto_6
    :try_start_4
    const-string v5, ""

    const-string v6, "fseq"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 15000
    iput-object v5, v3, Lcom/xiaomi/e/c/d;->k:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 0
    :cond_e
    :goto_7
    :try_start_5
    const-string v5, ""

    const-string v6, "status"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 16000
    iput-object v5, v3, Lcom/xiaomi/e/c/d;->l:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 0
    :cond_f
    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    .line 17000
    :goto_9
    iput-boolean v0, v3, Lcom/xiaomi/e/c/d;->g:Z

    .line 0
    const-string v0, ""

    const-string v5, "type"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18000
    iput-object v0, v3, Lcom/xiaomi/e/c/d;->a:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/e/e/c;->h(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v5, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 19000
    iput-object v0, v3, Lcom/xiaomi/e/c/d;->c:Ljava/lang/String;

    :goto_a
    move v0, v2

    move-object v2, v4

    .line 0
    :cond_10
    :goto_b
    if-nez v0, :cond_19

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-ne v4, v12, :cond_18

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const-string v5, "subject"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {p0}, Lcom/xiaomi/e/e/c;->h(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/e/e/c;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 20000
    iput-object v4, v3, Lcom/xiaomi/e/c/d;->d:Ljava/lang/String;

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v0, v4

    goto/16 :goto_4

    :cond_11
    move v0, v2

    .line 0
    goto :goto_9

    :cond_12
    invoke-static {}, Lcom/xiaomi/e/c/e;->g()Ljava/lang/String;

    goto :goto_a

    :cond_13
    const-string v5, "body"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v4, ""

    const-string v5, "encode"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/xiaomi/e/e/c;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 21000
    iput-object v5, v3, Lcom/xiaomi/e/c/d;->e:Ljava/lang/String;

    iput-object v4, v3, Lcom/xiaomi/e/c/d;->f:Ljava/lang/String;

    goto :goto_b

    .line 22000
    :cond_14
    iput-object v5, v3, Lcom/xiaomi/e/c/d;->e:Ljava/lang/String;

    goto :goto_b

    .line 0
    :cond_15
    const-string v5, "thread"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    if-nez v2, :cond_10

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_16
    const-string v5, "error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {p0}, Lcom/xiaomi/e/e/c;->f(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/k;

    move-result-object v4

    .line 23000
    iput-object v4, v3, Lcom/xiaomi/e/c/e;->v:Lcom/xiaomi/e/c/k;

    goto :goto_b

    .line 0
    :cond_17
    invoke-static {p0}, Lcom/xiaomi/e/e/c;->g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/e/c/d;->a(Lcom/xiaomi/e/c/a;)V

    goto :goto_b

    :cond_18
    if-ne v4, v13, :cond_10

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v0, v1

    goto/16 :goto_b

    .line 24000
    :cond_19
    iput-object v2, v3, Lcom/xiaomi/e/c/d;->b:Ljava/lang/String;

    move-object v0, v3

    .line 0
    goto/16 :goto_2

    :catch_2
    move-exception v5

    goto/16 :goto_8

    :catch_3
    move-exception v5

    goto/16 :goto_7

    :catch_4
    move-exception v5

    goto/16 :goto_6

    :catch_5
    move-exception v5

    goto/16 :goto_5

    :cond_1a
    move-object v3, v0

    goto/16 :goto_0
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/g;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 0
    sget-object v0, Lcom/xiaomi/e/c/i;->a:Lcom/xiaomi/e/c/i;

    const-string v2, ""

    const-string v3, "type"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {v2}, Lcom/xiaomi/e/c/i;->valueOf(Ljava/lang/String;)Lcom/xiaomi/e/c/i;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v2, Lcom/xiaomi/e/c/g;

    invoke-direct {v2, v0}, Lcom/xiaomi/e/c/g;-><init>(Lcom/xiaomi/e/c/i;)V

    const-string v0, ""

    const-string v3, "to"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25000
    iput-object v0, v2, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 0
    const-string v0, ""

    const-string v3, "from"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26000
    iput-object v0, v2, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 0
    const-string v0, ""

    const-string v3, "chid"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27000
    iput-object v0, v2, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 0
    const-string v0, ""

    const-string v3, "id"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ID_NOT_AVAILABLE"

    .line 28000
    :cond_1
    iput-object v0, v2, Lcom/xiaomi/e/c/e;->q:Ljava/lang/String;

    move v0, v1

    .line 0
    :cond_2
    :goto_1
    if-nez v0, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 29000
    iput-object v3, v2, Lcom/xiaomi/e/c/g;->a:Ljava/lang/String;

    goto :goto_1

    .line 0
    :catch_0
    move-exception v3

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found invalid presence type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "priority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/e/c/g;->a(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v2, v1}, Lcom/xiaomi/e/c/g;->a(I)V

    goto :goto_1

    :cond_4
    const-string v4, "show"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    :try_start_2
    invoke-static {v3}, Lcom/xiaomi/e/c/h;->valueOf(Ljava/lang/String;)Lcom/xiaomi/e/c/h;

    move-result-object v4

    .line 30000
    iput-object v4, v2, Lcom/xiaomi/e/c/g;->b:Lcom/xiaomi/e/c/h;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 0
    :catch_3
    move-exception v4

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found invalid presence mode "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p0}, Lcom/xiaomi/e/e/c;->f(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/k;

    move-result-object v3

    .line 31000
    iput-object v3, v2, Lcom/xiaomi/e/c/e;->v:Lcom/xiaomi/e/c/k;

    goto/16 :goto_1

    .line 0
    :cond_6
    invoke-static {p0}, Lcom/xiaomi/e/e/c;->g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/e/c/g;->a(Lcom/xiaomi/e/c/a;)V

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "presence"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_8
    return-object v2
.end method

.method public static c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/n;
    .locals 8

    .prologue
    .line 0
    new-instance v2, Lcom/xiaomi/e/n;

    invoke-direct {v2}, Lcom/xiaomi/e/n;-><init>()V

    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v3, "to"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const-string v4, "from"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "chid"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "type"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/e/o;->a(Ljava/lang/String;)Lcom/xiaomi/e/o;

    move-result-object v5

    .line 42000
    iput-object v0, v2, Lcom/xiaomi/e/c/e;->q:Ljava/lang/String;

    .line 43000
    iput-object v1, v2, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 44000
    iput-object v3, v2, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 45000
    iput-object v4, v2, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 46000
    if-nez v5, :cond_1

    sget-object v0, Lcom/xiaomi/e/o;->a:Lcom/xiaomi/e/o;

    iput-object v0, v2, Lcom/xiaomi/e/n;->a:Lcom/xiaomi/e/o;

    .line 0
    :goto_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    :cond_0
    :goto_1
    if-nez v0, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/xiaomi/e/e/c;->f(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/k;

    move-result-object v1

    goto :goto_1

    .line 46000
    :cond_1
    iput-object v5, v2, Lcom/xiaomi/e/n;->a:Lcom/xiaomi/e/o;

    goto :goto_0

    .line 0
    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 47000
    :cond_3
    iput-object v1, v2, Lcom/xiaomi/e/c/e;->v:Lcom/xiaomi/e/c/k;

    .line 0
    return-object v2
.end method

.method public static d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/j;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v1, Lcom/xiaomi/e/c/j;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/e/c/j;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static f(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/k;
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, "-1"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    move-object v7, v2

    move-object v8, v0

    move v0, v1

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, ""

    const-string v5, "code"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "type"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, ""

    const-string v7, "type"

    invoke-interface {p0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "reason"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v3, ""

    const-string v7, "reason"

    invoke-interface {p0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v7, v4

    move-object v8, v5

    goto :goto_0

    :cond_1
    move-object v4, v2

    move-object v5, v2

    :cond_2
    :goto_3
    if-nez v1, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v9, "urn:ietf:params:xml:ns:xmpp-stanzas"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v4, v2

    goto :goto_3

    :cond_4
    invoke-static {p0}, Lcom/xiaomi/e/e/c;->g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/a;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    if-nez v7, :cond_8

    const-string v2, "cancel"

    :goto_4
    new-instance v0, Lcom/xiaomi/e/c/k;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/e/c/k;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_8
    move-object v2, v7

    goto :goto_4

    :cond_9
    move-object v4, v7

    goto :goto_2

    :cond_a
    move-object v5, v8

    goto/16 :goto_1
.end method

.method private static g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/a;
    .locals 3

    .prologue
    .line 0
    invoke-static {}, Lcom/xiaomi/e/d/c;->a()Lcom/xiaomi/e/d/c;

    move-result-object v0

    const-string v1, "all"

    const-string v2, "xm:chat"

    .line 48000
    invoke-static {v1, v2}, Lcom/xiaomi/e/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/xiaomi/e/d/c;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/xiaomi/push/service/ah;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/ah;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xml:lang"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lang"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "xml"

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
