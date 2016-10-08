.class final Lcom/xueqiu/android/cube/CubeActivity$38;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$38;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1751
    new-instance v0, Lcom/xueqiu/android/common/widget/f;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$38;->a:Lcom/xueqiu/android/cube/CubeActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/widget/f;-><init>(Landroid/content/Context;Lcom/xueqiu/android/common/widget/g;)V

    .line 1752
    const-string v1, "\u66f4\u65b0\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 1753
    const-string v1, "\u4e3a\u4e86\u4fdd\u8bc1\u6570\u636e\u51c6\u786e\uff0c\u96ea\u7403\u5b9e\u76d8\u7ec4\u5408\u6570\u636e\u6bcf\u65e5\u66f4\u65b0\u4e00\u6b21\u3002 \u4e00\u822c\u4e8e\u51cc\u66681\u70b9\uff0c\u5238\u5546\u591c\u95f4\u6e05\u7b97\u7ed3\u675f\u540e\uff0c\u66f4\u65b0\u524d\u4e00\u4e2a\u4ea4\u6613\u65e5\u6570\u636e\u3002"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 1754
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 1755
    return-void
.end method
