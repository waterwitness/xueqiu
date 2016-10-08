.class final Lcom/xueqiu/android/cube/CubeTopListActivity$3;
.super Ljava/lang/Object;
.source "CubeTopListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeTopListActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeTopListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->h()Landroid/app/Dialog;

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/CubeTopListActivity;)V

    .line 180
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->c(Lcom/xueqiu/android/cube/CubeTopListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->b(Lcom/xueqiu/android/cube/CubeTopListActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/l;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->d(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/cube/l;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/CubeTopListActivity;Lcom/xueqiu/android/cube/l;Lcom/xueqiu/android/cube/l;)Lcom/xueqiu/android/cube/k;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/xueqiu/android/cube/k;->c:I

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/CubeTopListActivity;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->i()V

    .line 198
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->c(Lcom/xueqiu/android/cube/CubeTopListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->b(Lcom/xueqiu/android/cube/CubeTopListActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/l;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->d(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/cube/l;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/CubeTopListActivity;Lcom/xueqiu/android/cube/l;Lcom/xueqiu/android/cube/l;)Lcom/xueqiu/android/cube/k;

    move-result-object v0

    iget v1, v0, Lcom/xueqiu/android/cube/k;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/xueqiu/android/cube/k;->c:I

    .line 201
    :cond_0
    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->e(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 204
    :cond_1
    return-void
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->c(Lcom/xueqiu/android/cube/CubeTopListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->b(Lcom/xueqiu/android/cube/CubeTopListActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/l;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->d(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/cube/l;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/CubeTopListActivity;Lcom/xueqiu/android/cube/l;Lcom/xueqiu/android/cube/l;)Lcom/xueqiu/android/cube/k;

    move-result-object v0

    iget v1, v0, Lcom/xueqiu/android/cube/k;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/xueqiu/android/cube/k;->c:I

    .line 187
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->c(Lcom/xueqiu/android/cube/CubeTopListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->b(Lcom/xueqiu/android/cube/CubeTopListActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/l;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->d(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/cube/l;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/CubeTopListActivity;Lcom/xueqiu/android/cube/l;Lcom/xueqiu/android/cube/l;)Lcom/xueqiu/android/cube/k;

    move-result-object v0

    iget v0, v0, Lcom/xueqiu/android/cube/k;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x582

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 189
    const-string v2, "page_num"

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$3;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/CubeTopListActivity;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method
