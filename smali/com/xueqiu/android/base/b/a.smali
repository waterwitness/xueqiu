.class public Lcom/xueqiu/android/base/b/a;
.super Ljava/lang/Object;
.source "AbstractClient.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# instance fields
.field protected f:Lcom/xueqiu/android/base/b/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "124.250.3.100"

    sput-object v0, Lcom/xueqiu/android/base/b/a;->a:Ljava/lang/String;

    .line 12
    const-string v0, "xueqiu.com"

    sput-object v0, Lcom/xueqiu/android/base/b/a;->b:Ljava/lang/String;

    .line 13
    const-string v0, "api.xueqiu.com"

    sput-object v0, Lcom/xueqiu/android/base/b/a;->c:Ljava/lang/String;

    .line 14
    const-string v0, "mas.xueqiu.com"

    sput-object v0, Lcom/xueqiu/android/base/b/a;->d:Ljava/lang/String;

    .line 15
    const-string v0, "/v4"

    sput-object v0, Lcom/xueqiu/android/base/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 99
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/base/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "%s://%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 104
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/base/c/b;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p0, v2, v0

    .line 103
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    const-string v0, "/tc/snowx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not match \'/tc/snowx\' path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    :cond_1
    const-string v0, "/tc/snowx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    add-int/lit8 v0, v0, 0x9

    const-string v2, "/%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "%s%s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const-string v3, ".json"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, ""

    :goto_0
    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v2, "%s://%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/base/c/b;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    .line 86
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_3
    const-string v0, ".json"

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 55
    :cond_0
    const-string v1, "%s%s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string v0, ".json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, ""

    :goto_0
    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    const-string v2, "%s://%s/v4%s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 59
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/base/c/b;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    .line 58
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_1
    return-object v0

    .line 55
    :cond_2
    const-string v0, ".json"

    goto :goto_0

    .line 63
    :cond_3
    const-string v2, "%s://%s%s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/base/c/b;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    .line 63
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 126
    :cond_0
    const-string v1, "%s%s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string v0, ".json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, ""

    :goto_0
    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    if-eqz p1, :cond_3

    .line 129
    const-string v2, "%s://%s/v4%s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 130
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/base/c/b;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    .line 129
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_1
    return-object v0

    .line 126
    :cond_2
    const-string v0, ".json"

    goto :goto_0

    .line 134
    :cond_3
    const-string v2, "%s://%s%s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 135
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/base/c/b;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    .line 134
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
