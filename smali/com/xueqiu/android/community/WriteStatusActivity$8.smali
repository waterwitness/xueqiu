.class final Lcom/xueqiu/android/community/WriteStatusActivity$8;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Landroid/os/ResultReceiver;

.field final synthetic b:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$8;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$8;->a:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x7f0e0326

    const/4 v3, 0x0

    .line 755
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$8;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 757
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$8;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->z(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$8;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$8;->a:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 758
    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$8;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 761
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 766
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$8;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->z(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$8;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$8;->a:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 764
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method
