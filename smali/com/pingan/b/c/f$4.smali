.class final Lcom/pingan/b/c/f$4;
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
    .line 242
    iput-object p1, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    iput p2, p0, Lcom/pingan/b/c/f$4;->a:I

    iput p3, p0, Lcom/pingan/b/c/f$4;->b:I

    iput-object p4, p0, Lcom/pingan/b/c/f$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 245
    invoke-virtual {p1}, Lcom/pingan/b/a/m;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->f(Lcom/pingan/b/c/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-static {}, Lcom/pingan/b/a/m;->a()Lcom/pingan/b/a/m;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    invoke-static {v1}, Lcom/pingan/b/c/f;->e(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/h;

    move-result-object v1

    iget-object v2, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    invoke-static {v2}, Lcom/pingan/b/c/f;->c(Lcom/pingan/b/c/f;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v3}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget v0, p0, Lcom/pingan/b/c/f$4;->a:I

    iget-object v1, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    invoke-static {v1}, Lcom/pingan/b/c/f;->g(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/a;

    move-result-object v1

    iget v1, v1, Lcom/pingan/b/c/a;->m:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/pingan/b/a/m;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->e(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    invoke-static {v1}, Lcom/pingan/b/c/f;->c(Lcom/pingan/b/c/f;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, v3}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    iget v1, p0, Lcom/pingan/b/c/f$4;->b:I

    iget v2, p0, Lcom/pingan/b/c/f$4;->a:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/pingan/b/c/f$4;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/b/c/f;->a(Lcom/pingan/b/c/f;IILjava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_4
    if-nez p2, :cond_5

    .line 261
    iget-object v0, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    iget v1, p0, Lcom/pingan/b/c/f$4;->b:I

    iget v2, p0, Lcom/pingan/b/c/f$4;->a:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/pingan/b/c/f$4;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/b/c/f;->a(Lcom/pingan/b/c/f;IILjava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_5
    iget-object v0, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->h(Lcom/pingan/b/c/f;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/pingan/b/c/f$4;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/b/b/a;

    .line 1032
    iget v0, v0, Lcom/pingan/b/b/a;->a:I

    .line 265
    add-int/lit8 v1, v0, 0x1

    .line 266
    iget-object v0, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->h(Lcom/pingan/b/c/f;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/pingan/b/c/f$4;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/b/b/a;

    .line 1036
    iput v1, v0, Lcom/pingan/b/b/a;->a:I

    .line 267
    iget-object v0, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    iget v2, p0, Lcom/pingan/b/c/f$4;->b:I

    invoke-static {v0, v2}, Lcom/pingan/b/c/f;->a(Lcom/pingan/b/c/f;I)I

    move-result v0

    .line 268
    int-to-double v2, v0

    iget-object v0, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->g(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/a;

    move-result-object v0

    iget v0, v0, Lcom/pingan/b/c/a;->i:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 270
    if-ne v2, v1, :cond_6

    .line 271
    iget-object v0, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->h(Lcom/pingan/b/c/f;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/pingan/b/c/f$4;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/b/b/a;

    .line 1044
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/pingan/b/b/a;->b:Z

    .line 273
    :cond_6
    if-gt v1, v2, :cond_0

    .line 276
    iget-object v0, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    .line 1108
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, v0, Lcom/pingan/b/c/f;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1109
    iget-object v2, v0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    iget-object v2, v2, Lcom/pingan/b/c/a;->f:Lcom/pingan/b/c/e;

    iget-object v3, v0, Lcom/pingan/b/c/f;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v2, v3, v0, v1}, Lcom/pingan/b/c/e;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 277
    iget-object v0, p0, Lcom/pingan/b/c/f$4;->d:Lcom/pingan/b/c/f;

    iget v1, p0, Lcom/pingan/b/c/f$4;->b:I

    iget v2, p0, Lcom/pingan/b/c/f$4;->a:I

    iget-object v3, p0, Lcom/pingan/b/c/f$4;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/b/c/f;->a(Lcom/pingan/b/c/f;IILjava/lang/String;)V

    goto/16 :goto_0
.end method
