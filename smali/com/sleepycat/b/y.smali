.class abstract Lcom/sleepycat/b/y;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/sleepycat/b/bp;

.field private final b:Ljava/lang/String;

.field final c:Lcom/sleepycat/b/c/p;

.field final synthetic d:Lcom/sleepycat/b/x;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/sleepycat/b/y;->d:Lcom/sleepycat/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    iput-object p2, p0, Lcom/sleepycat/b/y;->a:Lcom/sleepycat/b/bp;

    .line 1128
    iput-object p3, p0, Lcom/sleepycat/b/y;->b:Ljava/lang/String;

    .line 1130
    invoke-virtual {p1}, Lcom/sleepycat/b/x;->e()V

    .line 1131
    invoke-virtual {p1}, Lcom/sleepycat/b/x;->g()V

    .line 1132
    invoke-static {p1}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/x;)V

    .line 1134
    iget-object v0, p1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 3379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1134
    iput-object v0, p0, Lcom/sleepycat/b/y;->c:Lcom/sleepycat/b/c/p;

    .line 1135
    return-void
.end method

.method private a(Z)Lcom/sleepycat/b/n/q;
    .locals 4

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sleepycat/b/y;->d:Lcom/sleepycat/b/x;

    iget-object v1, p0, Lcom/sleepycat/b/y;->a:Lcom/sleepycat/b/bp;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sleepycat/b/y;->d:Lcom/sleepycat/b/x;

    iget-object v3, v3, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 4326
    iget-boolean v3, v3, Lcom/sleepycat/b/c/ad;->e:Z

    .line 1186
    invoke-static {v0, v1, v2, v3, p1}, Lcom/sleepycat/b/n/r;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZZ)Lcom/sleepycat/b/n/q;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/sleepycat/b/n/q;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/n/q;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 1166
    const/4 v1, 0x0

    .line 1168
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/y;->a(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/p/ab;

    move-result-object v2

    .line 4024
    iget-object v0, v2, Lcom/sleepycat/b/p/ab;->a:Ljava/lang/Object;

    .line 1169
    check-cast v0, Lcom/sleepycat/b/c/i;

    .line 1170
    if-nez v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/sleepycat/b/y;->d:Lcom/sleepycat/b/x;

    iget-object v0, v0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/b/y;->d:Lcom/sleepycat/b/x;

    iget-object v2, v2, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 1179
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1181
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/n/q;->a_(Z)V

    throw v0

    .line 1174
    :cond_0
    const/4 v1, 0x1

    .line 1175
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/y;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V

    .line 4028
    iget-object v0, v2, Lcom/sleepycat/b/p/ab;->b:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1181
    invoke-virtual {p1, v1}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 1176
    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/p/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/n/q;",
            ")",
            "Lcom/sleepycat/b/p/ab",
            "<",
            "Lcom/sleepycat/b/c/i;",
            "TR;>;"
        }
    .end annotation
.end method

.method final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 1151
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sleepycat/b/y;->a(Z)Lcom/sleepycat/b/n/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/y;->b(Lcom/sleepycat/b/n/q;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sleepycat/b/c/s; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1154
    :goto_0
    return-object v0

    .line 1152
    :catch_0
    move-exception v0

    .line 1154
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/sleepycat/b/y;->a(Z)Lcom/sleepycat/b/n/q;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sleepycat/b/y;->b(Lcom/sleepycat/b/n/q;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/sleepycat/b/c/s; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1157
    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/sleepycat/b/y;->d:Lcom/sleepycat/b/x;

    iget-object v1, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method abstract a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V
.end method
