.class final Lcom/xueqiu/android/cube/CubeActivity$12;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;

.field private b:I

.field private c:Lcom/xueqiu/android/base/b/ai;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 1

    .prologue
    .line 345
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->b:I

    .line 347
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->c:Lcom/xueqiu/android/base/b/ai;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->b:I

    .line 352
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->c:Lcom/xueqiu/android/base/b/ai;

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->b(Lcom/xueqiu/android/cube/CubeActivity;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->b:I

    const/16 v5, 0xa

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->c(Lcom/xueqiu/android/cube/CubeActivity;)J

    move-result-wide v6

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;IIJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeActivity;->i()V

    .line 364
    if-nez p1, :cond_1

    .line 365
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 367
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->b:I

    .line 368
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->b:I

    if-gtz v0, :cond_0

    .line 369
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->b:I

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    if-nez p3, :cond_0

    .line 372
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeActivity;->i()V

    .line 373
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->d(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/i;->c()V

    .line 374
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->e(Lcom/xueqiu/android/cube/CubeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->f(Lcom/xueqiu/android/cube/CubeActivity;)Z

    .line 376
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$12$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$12$1;-><init>(Lcom/xueqiu/android/cube/CubeActivity$12;)V

    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    goto :goto_0
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 357
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->b:I

    .line 358
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->c:Lcom/xueqiu/android/base/b/ai;

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->b(Lcom/xueqiu/android/cube/CubeActivity;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->b:I

    const/16 v5, 0xa

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->c(Lcom/xueqiu/android/cube/CubeActivity;)J

    move-result-wide v6

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;IIJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method
