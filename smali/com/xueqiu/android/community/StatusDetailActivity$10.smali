.class final Lcom/xueqiu/android/community/StatusDetailActivity$10;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;->m()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$10;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$10;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 918
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    .line 920
    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$10;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;I)I

    .line 922
    const-string v0, "\u6700\u65b0"

    .line 931
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$10;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->q(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 932
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$10;->a:Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x6a4

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 935
    const-string v2, "option_name"

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 936
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 938
    return v4

    .line 923
    :cond_0
    if-ne v0, v4, :cond_1

    .line 924
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$10;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0, v4}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;I)I

    .line 925
    const-string v0, "\u6700\u65e9"

    goto :goto_0

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$10;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;I)I

    .line 928
    const-string v0, "\u9876"

    goto :goto_0
.end method
