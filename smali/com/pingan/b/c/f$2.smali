.class final Lcom/pingan/b/c/f$2;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Lcom/pingan/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/b/c/f;->a(IILjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/pingan/b/c/f;


# direct methods
.method constructor <init>(Lcom/pingan/b/c/f;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    iput p2, p0, Lcom/pingan/b/c/f$2;->a:I

    iput p3, p0, Lcom/pingan/b/c/f$2;->b:I

    iput-object p4, p0, Lcom/pingan/b/c/f$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/pingan/b/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->b(Lcom/pingan/b/c/f;)V

    .line 206
    iget-object v0, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->d(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/l;

    move-result-object v0

    iget-object v0, v0, Lcom/pingan/b/c/l;->b:Lcom/pingan/b/c/i;

    iget-object v1, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    invoke-static {v1}, Lcom/pingan/b/c/f;->c(Lcom/pingan/b/c/f;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/pingan/b/c/i;->a(Ljava/lang/String;D)V

    .line 207
    iget-object v0, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->e(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    invoke-static {v1}, Lcom/pingan/b/c/f;->c(Lcom/pingan/b/c/f;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    .line 222
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->f(Lcom/pingan/b/c/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-static {}, Lcom/pingan/b/a/m;->a()Lcom/pingan/b/a/m;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    invoke-static {v1}, Lcom/pingan/b/c/f;->e(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/h;

    move-result-object v1

    iget-object v2, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    invoke-static {v2}, Lcom/pingan/b/c/f;->c(Lcom/pingan/b/c/f;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p1}, Lcom/pingan/b/a/m;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/pingan/b/c/f$2;->a:I

    iget-object v1, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    invoke-static {v1}, Lcom/pingan/b/c/f;->g(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/a;

    move-result-object v1

    iget v1, v1, Lcom/pingan/b/c/a;->m:I

    if-ge v0, v1, :cond_2

    .line 218
    iget-object v0, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    iget v1, p0, Lcom/pingan/b/c/f$2;->b:I

    iget v2, p0, Lcom/pingan/b/c/f$2;->a:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/pingan/b/c/f$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/b/c/f;->a(Lcom/pingan/b/c/f;IILjava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->e(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/pingan/b/c/f$2;->d:Lcom/pingan/b/c/f;

    invoke-static {v1}, Lcom/pingan/b/c/f;->c(Lcom/pingan/b/c/f;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
