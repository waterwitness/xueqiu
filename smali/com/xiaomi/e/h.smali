.class final Lcom/xiaomi/e/h;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/Thread;

.field b:Z

.field private c:Lcom/xiaomi/e/p;

.field private d:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/e/p;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/e/h;->c:Lcom/xiaomi/e/p;

    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/e/h;->b:Z

    new-instance v0, Lcom/xiaomi/e/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Smack Packet Reader ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/e/h;->c:Lcom/xiaomi/e/p;

    iget v2, v2, Lcom/xiaomi/e/p;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/e/i;-><init>(Lcom/xiaomi/e/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/e/h;->a:Ljava/lang/Thread;

    .line 0
    return-void
.end method

.method private a(ILjava/lang/Exception;)V
    .locals 6

    .prologue
    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/e/h;->b:Z

    iget-object v0, p0, Lcom/xiaomi/e/h;->c:Lcom/xiaomi/e/p;

    .line 2000
    iget-object v1, v0, Lcom/xiaomi/e/p;->x:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/e/r;

    invoke-direct {v2, v0, p1, p2}, Lcom/xiaomi/e/r;-><init>(Lcom/xiaomi/e/p;ILjava/lang/Exception;)V

    .line 3000
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    .line 0
    return-void
.end method

.method private a(Lcom/xiaomi/e/c/e;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/e/h;->c:Lcom/xiaomi/e/p;

    iget-object v0, v0, Lcom/xiaomi/e/p;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/e/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/e/b;->a(Lcom/xiaomi/e/c/e;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/e/h;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 4000
    .line 5000
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lcom/xiaomi/e/h;->c:Lcom/xiaomi/e/p;

    iget-object v1, v1, Lcom/xiaomi/e/p;->j:Ljava/io/Reader;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4000
    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const-string v0, ""

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/e/h;->c:Lcom/xiaomi/e/p;

    .line 6000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/xiaomi/e/a;->q:J

    .line 4000
    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/xiaomi/e/e/c;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/e/h;->a(Lcom/xiaomi/e/c/e;)V

    move-object v0, v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    iget-boolean v2, p0, Lcom/xiaomi/e/h;->b:Z

    if-nez v2, :cond_2

    if-ne v1, v6, :cond_0

    :cond_2
    if-ne v1, v6, :cond_3

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SMACK: server close the connection or timeout happened, last element name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " host="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/e/h;->c:Lcom/xiaomi/e/p;

    invoke-virtual {v2}, Lcom/xiaomi/e/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    iget-boolean v1, p0, Lcom/xiaomi/e/h;->b:Z

    if-nez v1, :cond_f

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/e/h;->a(ILjava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "iq"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/xiaomi/e/h;->c:Lcom/xiaomi/e/p;

    invoke-static {v0, v2}, Lcom/xiaomi/e/e/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/xiaomi/e/a;)Lcom/xiaomi/e/c/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/e/h;->a(Lcom/xiaomi/e/c/e;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "presence"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/xiaomi/e/e/c;->b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/e/h;->a(Lcom/xiaomi/e/c/e;)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "stream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v2, ""

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v2

    move v2, v7

    :goto_2
    iget-object v3, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_a

    iget-object v3, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/xiaomi/e/h;->c:Lcom/xiaomi/e/p;

    iget-object v3, v3, Lcom/xiaomi/e/p;->o:Lcom/xiaomi/e/c;

    iget-object v4, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 7000
    iput-object v4, v3, Lcom/xiaomi/e/c;->d:Ljava/lang/String;

    .line 4000
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "challenge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v3, "ps"

    iget-object v4, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/e/c/b;

    invoke-direct {v4}, Lcom/xiaomi/e/c/b;-><init>()V

    const-string v5, "0"

    .line 8000
    iput-object v5, v4, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 4000
    const-string v5, "0"

    .line 9000
    iput-object v5, v4, Lcom/xiaomi/e/c/e;->q:Ljava/lang/String;

    .line 4000
    const-string v5, "ps"

    invoke-virtual {v4, v5, v3}, Lcom/xiaomi/e/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/e/c/c;->b:Lcom/xiaomi/e/c/c;

    invoke-virtual {v4, v3}, Lcom/xiaomi/e/c/b;->a(Lcom/xiaomi/e/c/c;)V

    invoke-direct {p0, v4}, Lcom/xiaomi/e/h;->a(Lcom/xiaomi/e/c/e;)V

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/xiaomi/e/h;->c:Lcom/xiaomi/e/p;

    invoke-virtual {v2, v0}, Lcom/xiaomi/e/p;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/xiaomi/e/t;

    iget-object v1, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/xiaomi/e/e/c;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/e/t;-><init>(Lcom/xiaomi/e/c/j;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "warning"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "multi-login"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/xiaomi/e/h;->a(ILjava/lang/Exception;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bind"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/xiaomi/e/e/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/e/h;->a(Lcom/xiaomi/e/c/e;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/xiaomi/e/h;->d:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/e/h;->a(ILjava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_f
    const-string v0, "reader is shutdown, ignore the exception."

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/e/h;->c:Lcom/xiaomi/e/p;

    iget-object v0, v0, Lcom/xiaomi/e/p;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
