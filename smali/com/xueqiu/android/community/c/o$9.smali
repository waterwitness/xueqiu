.class final Lcom/xueqiu/android/community/c/o$9;
.super Ljava/lang/Object;
.source "PublicTimelineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/o;->a(Lcom/xueqiu/android/common/model/EnterButton;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/model/EnterButton;

.field final synthetic b:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;Lcom/xueqiu/android/common/model/EnterButton;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$9;->b:Lcom/xueqiu/android/community/c/o;

    iput-object p2, p0, Lcom/xueqiu/android/community/c/o$9;->a:Lcom/xueqiu/android/common/model/EnterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$9;->a:Lcom/xueqiu/android/common/model/EnterButton;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/EnterButton;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$9;->b:Lcom/xueqiu/android/community/c/o;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 513
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 514
    const-string v1, "nav_name"

    iget-object v2, p0, Lcom/xueqiu/android/community/c/o$9;->a:Lcom/xueqiu/android/common/model/EnterButton;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/model/EnterButton;->getButtonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 515
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 516
    return-void
.end method
