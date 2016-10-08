.class final Lcom/xueqiu/android/cube/CubeCardListActivity$1;
.super Ljava/lang/Object;
.source "CubeCardListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeCardListActivity;->onCreate(Landroid/os/Bundle;)V
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
.field a:I

.field final synthetic b:Lcom/xueqiu/android/cube/CubeCardListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeCardListActivity;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$1;->b:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$1;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
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
    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$1;->a:I

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$1;->b:Lcom/xueqiu/android/cube/CubeCardListActivity;

    iget v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$1;->a:I

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/cube/CubeCardListActivity;->a(Lcom/xueqiu/android/cube/CubeCardListActivity;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 1
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
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$1;->b:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->i()V

    .line 127
    if-nez p1, :cond_0

    .line 128
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 131
    :cond_0
    if-nez p3, :cond_1

    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$1;->b:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->a(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 134
    :cond_1
    return-void
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
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
    .line 120
    iget v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$1;->a:I

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$1;->b:Lcom/xueqiu/android/cube/CubeCardListActivity;

    iget v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$1;->a:I

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/cube/CubeCardListActivity;->a(Lcom/xueqiu/android/cube/CubeCardListActivity;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method
