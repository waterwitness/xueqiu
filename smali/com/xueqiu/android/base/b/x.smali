.class public final Lcom/xueqiu/android/base/b/x;
.super Lcom/android/volley/n;
.source "SNBRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/n",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static n:I

.field protected static o:J


# instance fields
.field l:Lcom/android/volley/o;

.field m:Lcom/xueqiu/android/base/b/aa;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lorg/apache/http/HttpEntity;

.field private s:Lcom/xueqiu/android/base/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/base/b/p",
            "<TT;>;"
        }
    .end annotation
.end field

.field private t:Lcom/xueqiu/android/common/model/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/model/parser/Parser",
            "<*>;"
        }
    .end annotation
.end field

.field private u:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, -0x1

    sput v0, Lcom/xueqiu/android/base/b/x;->n:I

    .line 72
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xueqiu/android/base/b/x;->o:J

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Lcom/android/volley/s;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/n;-><init>(ILjava/lang/String;Lcom/android/volley/s;)V

    .line 56
    iput-object v0, p0, Lcom/xueqiu/android/base/b/x;->p:Ljava/util/Map;

    .line 57
    iput-object v0, p0, Lcom/xueqiu/android/base/b/x;->q:Ljava/util/Map;

    .line 62
    iput-object v0, p0, Lcom/xueqiu/android/base/b/x;->t:Lcom/xueqiu/android/common/model/parser/Parser;

    .line 63
    iput-object v0, p0, Lcom/xueqiu/android/base/b/x;->l:Lcom/android/volley/o;

    .line 64
    iput-object v0, p0, Lcom/xueqiu/android/base/b/x;->m:Lcom/xueqiu/android/base/b/aa;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/base/b/x;->u:J

    .line 143
    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/base/b/p",
            "<TT;>;",
            "Lcom/xueqiu/android/common/model/parser/Parser;",
            ")",
            "Lcom/xueqiu/android/base/b/x",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    if-nez p2, :cond_0

    .line 98
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 100
    :cond_0
    invoke-static {p2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/xueqiu/android/base/b/x;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 102
    if-nez p0, :cond_1

    .line 103
    invoke-static {v0}, Lcom/xueqiu/android/base/b/x;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 106
    :cond_1
    invoke-static {p1, v0}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 109
    if-nez p0, :cond_3

    .line 110
    invoke-static {v2, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 111
    new-instance v1, Lcom/xueqiu/android/base/b/x;

    iget-object v3, p3, Lcom/xueqiu/android/base/b/p;->f:Lcom/android/volley/s;

    invoke-direct {v1, p0, v2, v3}, Lcom/xueqiu/android/base/b/x;-><init>(ILjava/lang/String;Lcom/android/volley/s;)V

    .line 115
    :goto_0
    iput-object p3, v1, Lcom/xueqiu/android/base/b/x;->s:Lcom/xueqiu/android/base/b/p;

    .line 116
    iput-object p4, v1, Lcom/xueqiu/android/base/b/x;->t:Lcom/xueqiu/android/common/model/parser/Parser;

    .line 117
    iput-object v0, v1, Lcom/xueqiu/android/base/b/x;->p:Ljava/util/Map;

    .line 1481
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/volley/n;->g:Z

    .line 1514
    if-nez p0, :cond_4

    .line 1515
    new-instance v0, Lcom/xueqiu/android/base/b/ac;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/ac;-><init>()V

    .line 2198
    iput-object v0, v1, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 121
    :goto_1
    sget-boolean v0, Lcom/xueqiu/android/base/util/v;->a:Z

    if-eqz v0, :cond_2

    .line 122
    const-string v0, "SNBRequest"

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/x;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    return-object v1

    .line 113
    :cond_3
    new-instance v1, Lcom/xueqiu/android/base/b/x;

    iget-object v3, p3, Lcom/xueqiu/android/base/b/p;->f:Lcom/android/volley/s;

    invoke-direct {v1, p0, v2, v3}, Lcom/xueqiu/android/base/b/x;-><init>(ILjava/lang/String;Lcom/android/volley/s;)V

    goto :goto_0

    .line 1517
    :cond_4
    new-instance v0, Lcom/xueqiu/android/base/b/ab;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/ab;-><init>()V

    .line 3198
    iput-object v0, v1, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/base/b/p",
            "<TT;>;",
            "Lcom/xueqiu/android/common/model/parser/Parser;",
            ")",
            "Lcom/xueqiu/android/base/b/x",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/xueqiu/android/base/b/x;->a(ILjava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/xueqiu/android/base/b/p",
            "<TT;>;",
            "Lcom/xueqiu/android/common/model/parser/Parser",
            "<TT;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    invoke-static {v0}, Lcom/xueqiu/android/base/b/x;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 130
    invoke-static {p0, v0}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v2, Lcom/xueqiu/android/base/b/x;

    const/4 v3, 0x1

    iget-object v4, p2, Lcom/xueqiu/android/base/b/p;->f:Lcom/android/volley/s;

    invoke-direct {v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/x;-><init>(ILjava/lang/String;Lcom/android/volley/s;)V

    .line 133
    iput-object v0, v2, Lcom/xueqiu/android/base/b/x;->p:Ljava/util/Map;

    .line 134
    iput-object p2, v2, Lcom/xueqiu/android/base/b/x;->s:Lcom/xueqiu/android/base/b/p;

    .line 135
    iput-object p3, v2, Lcom/xueqiu/android/base/b/x;->t:Lcom/xueqiu/android/common/model/parser/Parser;

    .line 136
    iput-object p1, v2, Lcom/xueqiu/android/base/b/x;->r:Lorg/apache/http/HttpEntity;

    .line 3481
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/volley/n;->g:Z

    .line 138
    return-object v2
.end method

.method public static a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/message/BasicNameValuePair;",
            "Lcom/xueqiu/android/base/b/p",
            "<TT;>;",
            "Lcom/xueqiu/android/common/model/parser/Parser;",
            ")",
            "Lcom/xueqiu/android/base/b/x",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p1}, Lcom/xueqiu/android/base/b/x;->a([Lorg/apache/http/NameValuePair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 576
    :try_start_0
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const-string v0, "&"

    .line 581
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 586
    :goto_1
    return-object p0

    .line 579
    :cond_0
    const-string v0, "?"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 324
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 330
    :cond_0
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 334
    :cond_1
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    const-string v0, "&"

    .line 339
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :cond_2
    const-string v0, "?"

    goto :goto_1
.end method

.method private static a([Lorg/apache/http/NameValuePair;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/NameValuePair;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 344
    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    .line 345
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 346
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 347
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    return-object v1
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/base/b/p",
            "<TT;>;",
            "Lcom/xueqiu/android/common/model/parser/Parser;",
            ")",
            "Lcom/xueqiu/android/base/b/x",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lcom/xueqiu/android/base/b/x;->a(ILjava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/message/BasicNameValuePair;",
            "Lcom/xueqiu/android/base/b/p",
            "<TT;>;",
            "Lcom/xueqiu/android/common/model/parser/Parser;",
            ")",
            "Lcom/xueqiu/android/base/b/x",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p1}, Lcom/xueqiu/android/base/b/x;->a([Lorg/apache/http/NameValuePair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x3d

    .line 522
    const-string v0, "_t"

    invoke-static {}, Lcom/xueqiu/android/base/util/ax;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14540
    new-instance v0, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v0, v2}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    .line 14541
    invoke-virtual {v0}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    move-result-object v0

    .line 14543
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 14544
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 14545
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    .line 14546
    iget-object v4, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    iget-object v0, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14550
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 14552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14553
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 14554
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 14555
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14556
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14557
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14558
    const/16 v0, 0x26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14563
    :cond_1
    const-string v0, "_secretkey"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14564
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14565
    const-string v0, "2ee0b0d606aa1e845fb9537251db0785"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14567
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14568
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 524
    const-string v1, "_s"

    invoke-static {v2, v1, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    return-object v0
.end method

.method private static b(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    sget v0, Lcom/xueqiu/android/base/b/x;->n:I

    if-ltz v0, :cond_0

    .line 274
    const-string v0, "x"

    const-string v1, "%d.%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/xueqiu/android/base/b/x;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-wide v4, Lcom/xueqiu/android/base/b/x;->o:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const/4 v0, -0x1

    sput v0, Lcom/xueqiu/android/base/b/x;->n:I

    .line 277
    :cond_0
    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 362
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 363
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 364
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 366
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 367
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 377
    :goto_1
    return-object p0

    .line 372
    :cond_2
    :try_start_1
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_1
.end method

.method private static c(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 591
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 592
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 593
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 596
    :cond_1
    return-object v1
.end method

.method private static d(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 602
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 604
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 612
    :cond_1
    return-object v2
.end method

.method private i()Ljava/lang/String;
    .locals 6

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/xueqiu/android/base/b/x;->a()Ljava/lang/String;

    move-result-object v2

    .line 9147
    iget v0, p0, Lcom/android/volley/n;->a:I

    .line 382
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const/16 v0, 0x26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 396
    :cond_0
    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    const-string v0, "&"

    .line 401
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    :goto_2
    return-object v0

    .line 399
    :cond_1
    const-string v0, "?"

    goto :goto_1

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/base/b/x;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private j()V
    .locals 5

    .prologue
    .line 473
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/base/b/x;->c()Ljava/util/Map;

    move-result-object v1

    .line 474
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/xueqiu/android/base/b/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 478
    sget-object v0, Lcom/xueqiu/android/base/util/ac;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    const-string v4, "host"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 482
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 488
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/xueqiu/android/base/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/android/volley/k;)Lcom/android/volley/r;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/k;",
            ")",
            "Lcom/android/volley/r",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/base/b/x;->u:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/xueqiu/android/base/b/x;->o:J

    .line 214
    sput v8, Lcom/xueqiu/android/base/b/x;->n:I

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/xueqiu/android/base/b/x;->m:Lcom/xueqiu/android/base/b/aa;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/volley/k;->b:[B

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/xueqiu/android/base/b/x;->a()Ljava/lang/String;

    move-result-object v2

    .line 219
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    const/4 v3, 0x0

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/xueqiu/android/base/b/x;->m:Lcom/xueqiu/android/base/b/aa;

    iget-object v4, p1, Lcom/android/volley/k;->b:[B

    array-length v4, v4

    invoke-interface {v3, v2, v4}, Lcom/xueqiu/android/base/b/aa;->a(Ljava/lang/String;I)V

    .line 225
    :cond_1
    invoke-static {p1}, Lcom/xueqiu/android/base/b/a/a;->a(Lcom/android/volley/k;)Ljava/lang/String;

    move-result-object v3

    .line 226
    const-string v2, "SNBRequest"

    const-string v4, "response: %d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Lcom/android/volley/k;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget v2, p1, Lcom/android/volley/k;->a:I

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_6

    .line 228
    if-eqz v3, :cond_2

    const-string v2, "{"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v4, Lcom/xueqiu/android/base/a/a;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/y;

    invoke-static {v2}, Lcom/android/volley/r;->a(Lcom/android/volley/y;)Lcom/android/volley/r;

    move-result-object v2

    .line 254
    :goto_0
    return-object v2

    .line 230
    :cond_2
    if-eqz v3, :cond_3

    .line 231
    new-instance v2, Lcom/android/volley/y;

    invoke-direct {v2, v3}, Lcom/android/volley/y;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/volley/r;->a(Lcom/android/volley/y;)Lcom/android/volley/r;

    move-result-object v2

    goto :goto_0

    .line 232
    :cond_3
    iget v2, p1, Lcom/android/volley/k;->a:I

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_4

    iget v2, p1, Lcom/android/volley/k;->a:I

    const/16 v3, 0x1f6

    if-ne v2, v3, :cond_5

    .line 233
    :cond_4
    new-instance v2, Lcom/android/volley/y;

    const-string v3, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v2, v3}, Lcom/android/volley/y;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/volley/r;->a(Lcom/android/volley/y;)Lcom/android/volley/r;

    move-result-object v2

    goto :goto_0

    .line 235
    :cond_5
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/x;->j()V

    .line 236
    new-instance v2, Lcom/android/volley/y;

    invoke-direct {v2, p1}, Lcom/android/volley/y;-><init>(Lcom/android/volley/k;)V

    invoke-static {v2}, Lcom/android/volley/r;->a(Lcom/android/volley/y;)Lcom/android/volley/r;

    move-result-object v2

    goto :goto_0

    .line 3496
    :cond_6
    invoke-virtual {p0}, Lcom/xueqiu/android/base/b/x;->c()Ljava/util/Map;

    move-result-object v4

    .line 3497
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3498
    :cond_7
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v2

    const-string v4, "api.xueqiu.com"

    invoke-virtual {v2, v4}, Lcom/xueqiu/android/base/c/b;->b(Ljava/lang/String;)V

    .line 242
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/xueqiu/android/base/b/x;->t:Lcom/xueqiu/android/common/model/parser/Parser;

    invoke-static {v2, v3}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->consume(Lcom/xueqiu/android/common/model/parser/Parser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 243
    if-eqz v3, :cond_9

    instance-of v2, v3, Ljava/util/Collection;

    if-eqz v2, :cond_9

    .line 244
    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 4022
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 4024
    iget-object v10, p1, Lcom/android/volley/k;->c:Ljava/util/Map;

    .line 4029
    const-string v2, "Date"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4030
    if-eqz v2, :cond_d

    .line 4031
    invoke-static {v2}, Lcom/xueqiu/android/base/b/u;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 4034
    :goto_2
    const-string v2, "ETag"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4043
    add-long/2addr v6, v8

    .line 4044
    const-wide/32 v12, 0x3df16000

    add-long/2addr v8, v12

    .line 4046
    new-instance v11, Lcom/android/volley/c;

    invoke-direct {v11}, Lcom/android/volley/c;-><init>()V

    .line 4047
    iget-object v12, p1, Lcom/android/volley/k;->b:[B

    iput-object v12, v11, Lcom/android/volley/c;->a:[B

    .line 4048
    iput-object v2, v11, Lcom/android/volley/c;->b:Ljava/lang/String;

    .line 4049
    iput-wide v6, v11, Lcom/android/volley/c;->e:J

    .line 4050
    iput-wide v8, v11, Lcom/android/volley/c;->d:J

    .line 4051
    iput-wide v4, v11, Lcom/android/volley/c;->c:J

    .line 4052
    iput-object v10, v11, Lcom/android/volley/c;->f:Ljava/util/Map;

    .line 246
    invoke-static {v3, v11}, Lcom/android/volley/r;->a(Ljava/lang/Object;Lcom/android/volley/c;)Lcom/android/volley/r;

    move-result-object v2

    goto/16 :goto_0

    .line 3501
    :cond_a
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3502
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3503
    const-string v8, "host"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3504
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3505
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xueqiu/android/base/c/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 249
    :catch_0
    move-exception v2

    .line 250
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/x;->j()V

    .line 251
    instance-of v3, v2, Lcom/android/volley/y;

    if-eqz v3, :cond_c

    .line 252
    check-cast v2, Lcom/android/volley/y;

    invoke-static {v2}, Lcom/android/volley/r;->a(Lcom/android/volley/y;)Lcom/android/volley/r;

    move-result-object v2

    goto/16 :goto_0

    .line 254
    :cond_c
    new-instance v3, Lcom/android/volley/y;

    invoke-direct {v3, v2}, Lcom/android/volley/y;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/r;->a(Lcom/android/volley/y;)Lcom/android/volley/r;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    move-wide v4, v6

    goto :goto_2
.end method

.method protected final a(Lcom/android/volley/y;)Lcom/android/volley/y;
    .locals 4

    .prologue
    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xueqiu/android/base/b/x;->u:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/xueqiu/android/base/b/x;->o:J

    .line 178
    iget-object v0, p1, Lcom/android/volley/y;->a:Lcom/android/volley/k;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/volley/y;->a:Lcom/android/volley/k;

    iget-object v0, v0, Lcom/android/volley/k;->b:[B

    if-eqz v0, :cond_5

    .line 179
    const/4 v0, 0x0

    sput v0, Lcom/xueqiu/android/base/b/x;->n:I

    .line 181
    :try_start_0
    iget-object v0, p1, Lcom/android/volley/y;->a:Lcom/android/volley/k;

    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/a;->a(Lcom/android/volley/k;)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v0, p1, Lcom/android/volley/y;->a:Lcom/android/volley/k;

    iget v0, v0, Lcom/android/volley/k;->a:I

    const/16 v2, 0x194

    if-ne v0, v2, :cond_0

    .line 183
    new-instance v0, Lcom/android/volley/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "404 not found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xueqiu/android/base/b/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/volley/y;-><init>(Ljava/lang/String;)V

    .line 208
    :goto_0
    return-object v0

    .line 184
    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/xueqiu/android/base/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/y;

    goto :goto_0

    .line 186
    :cond_1
    if-eqz v1, :cond_2

    .line 187
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/x;->j()V

    .line 188
    new-instance v0, Lcom/android/volley/y;

    invoke-direct {v0, v1}, Lcom/android/volley/y;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "SNBRequest"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    invoke-super {p0, p1}, Lcom/android/volley/n;->a(Lcom/android/volley/y;)Lcom/android/volley/y;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_2
    :try_start_1
    iget-object v0, p1, Lcom/android/volley/y;->a:Lcom/android/volley/k;

    iget v0, v0, Lcom/android/volley/k;->a:I

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lcom/android/volley/y;->a:Lcom/android/volley/k;

    iget v0, v0, Lcom/android/volley/k;->a:I

    const/16 v1, 0x1f6

    if-ne v0, v1, :cond_4

    .line 190
    :cond_3
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/x;->j()V

    .line 191
    new-instance v0, Lcom/android/volley/y;

    const-string v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v0, v1}, Lcom/android/volley/y;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_4
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/x;->j()V

    .line 194
    invoke-super {p0, p1}, Lcom/android/volley/n;->a(Lcom/android/volley/y;)Lcom/android/volley/y;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_5
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/x;->j()V

    .line 202
    instance-of v0, p1, Lcom/android/volley/x;

    if-eqz v0, :cond_6

    .line 203
    const/4 v0, 0x2

    sput v0, Lcom/xueqiu/android/base/b/x;->n:I

    .line 208
    :goto_1
    invoke-super {p0, p1}, Lcom/android/volley/n;->a(Lcom/android/volley/y;)Lcom/android/volley/y;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_6
    const/4 v0, 0x1

    sput v0, Lcom/xueqiu/android/base/b/x;->n:I

    goto :goto_1
.end method

.method public final a(Lcom/xueqiu/android/base/b/r;)V
    .locals 1

    .prologue
    .line 294
    .line 5013
    iget-boolean v0, p1, Lcom/xueqiu/android/base/b/r;->a:Z

    .line 5481
    iput-boolean v0, p0, Lcom/android/volley/n;->g:Z

    .line 6021
    iget-object v0, p1, Lcom/xueqiu/android/base/b/r;->b:Lcom/android/volley/v;

    .line 296
    if-eqz v0, :cond_0

    .line 7021
    iget-object v0, p1, Lcom/xueqiu/android/base/b/r;->b:Lcom/android/volley/v;

    .line 7198
    iput-object v0, p0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 8029
    :cond_0
    iget-object v0, p1, Lcom/xueqiu/android/base/b/r;->c:Lcom/android/volley/o;

    .line 300
    if-eqz v0, :cond_1

    .line 9029
    iget-object v0, p1, Lcom/xueqiu/android/base/b/r;->c:Lcom/android/volley/o;

    .line 301
    iput-object v0, p0, Lcom/xueqiu/android/base/b/x;->l:Lcom/android/volley/o;

    .line 303
    :cond_1
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 261
    .line 4336
    iget-boolean v0, p0, Lcom/android/volley/n;->h:Z

    .line 261
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->s:Lcom/xueqiu/android/base/b/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->s:Lcom/xueqiu/android/base/b/p;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/b/p;->a(Ljava/lang/Object;)V

    .line 4531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/n;->i:Z

    .line 265
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/volley/n;->a(Ljava/lang/String;)V

    .line 148
    iget-wide v0, p0, Lcom/xueqiu/android/base/b/x;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/base/b/x;->u:J

    .line 151
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    iput-object p1, p0, Lcom/xueqiu/android/base/b/x;->q:Ljava/util/Map;

    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->q:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/x;->q:Ljava/util/Map;

    .line 319
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/x;->i()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lcom/xueqiu/android/base/b/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 409
    .line 9336
    iget-boolean v0, p0, Lcom/android/volley/n;->h:Z

    .line 409
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->s:Lcom/xueqiu/android/base/b/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/p;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 414
    check-cast v0, Lcom/xueqiu/android/base/a/a;

    .line 10064
    iget-object v1, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 415
    if-eqz v1, :cond_3

    .line 11064
    iget-object v1, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 415
    const-string v2, "400012"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->logout()V

    .line 424
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/android/volley/n;->b(Lcom/android/volley/y;)V

    .line 14531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/n;->i:Z

    goto :goto_0

    .line 12064
    :cond_3
    iget-object v1, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 417
    if-eqz v1, :cond_2

    .line 13064
    iget-object v1, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 418
    const-string v2, "400016"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 14064
    iget-object v0, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 418
    const-string v1, "400013"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14069
    :cond_4
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->b()V

    goto :goto_1
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->q:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/x;->q:Ljava/util/Map;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->q:Ljava/util/Map;

    return-object v0
.end method

.method protected final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->p:Ljava/util/Map;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->r:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->r:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/volley/n;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()[B
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->r:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 164
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->r:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 172
    :goto_1
    return-object v0

    .line 168
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/android/volley/n;->f()[B

    move-result-object v0

    goto :goto_1
.end method

.method public final g()Lcom/android/volley/o;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->l:Lcom/android/volley/o;

    if-nez v0, :cond_0

    .line 283
    invoke-super {p0}, Lcom/android/volley/n;->g()Lcom/android/volley/o;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b/x;->l:Lcom/android/volley/o;

    goto :goto_0
.end method
