.class final Lc/a$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lc/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a;->source(Lc/s;)Lc/s;
.end annotation


# instance fields
.field final synthetic a:Lc/s;

.field final synthetic b:Lc/a;


# direct methods
.method constructor <init>(Lc/a;Lc/s;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lc/a$2;->b:Lc/a;

    iput-object p2, p0, Lc/a$2;->a:Lc/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Lc/a$2;->a:Lc/s;

    invoke-interface {v0}, Lc/s;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v0, p0, Lc/a$2;->b:Lc/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/a;->exit(Z)V

    .line 230
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    :try_start_1
    iget-object v1, p0, Lc/a$2;->b:Lc/a;

    invoke-virtual {v1, v0}, Lc/a;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/a$2;->b:Lc/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/a;->exit(Z)V

    throw v0
.end method

.method public final read(Lc/d;J)J
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lc/a$2;->b:Lc/a;

    invoke-virtual {v0}, Lc/a;->enter()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lc/a$2;->a:Lc/s;

    invoke-interface {v0, p1, p2, p3}, Lc/s;->read(Lc/d;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 217
    iget-object v2, p0, Lc/a$2;->b:Lc/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc/a;->exit(Z)V

    return-wide v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    :try_start_1
    iget-object v1, p0, Lc/a$2;->b:Lc/a;

    invoke-virtual {v1, v0}, Lc/a;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/a$2;->b:Lc/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/a;->exit(Z)V

    throw v0
.end method

.method public final timeout()Lc/t;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lc/a$2;->b:Lc/a;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/a$2;->a:Lc/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
