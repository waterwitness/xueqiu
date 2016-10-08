.class final Lcom/xueqiu/android/cube/CubeTopListActivity$2;
.super Ljava/lang/Object;
.source "CubeTopListActivity.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeTopListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeTopListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$2;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$2;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    .line 1267
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/common/b;->m:Z

    .line 150
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$2;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    .line 3267
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/b;->m:Z

    .line 162
    return-void
.end method

.method public final b_(I)V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$2;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    .line 2267
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/b;->m:Z

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x582

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 157
    return-void
.end method
