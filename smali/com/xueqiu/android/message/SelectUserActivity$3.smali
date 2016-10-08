.class final Lcom/xueqiu/android/message/SelectUserActivity$3;
.super Ljava/lang/Object;
.source "SelectUserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/SelectUserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/SelectUserActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/SelectUserActivity;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/xueqiu/android/message/SelectUserActivity$3;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity$3;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/SelectUserActivity;->c(Lcom/xueqiu/android/message/SelectUserActivity;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v1, p3, v0

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity$3;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/SelectUserActivity;->b(Lcom/xueqiu/android/message/SelectUserActivity;)Lcom/xueqiu/android/message/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const v0, 0x7f0e056e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 195
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 197
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity$3;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/SelectUserActivity;->b(Lcom/xueqiu/android/message/SelectUserActivity;I)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity$3;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/SelectUserActivity;->a(Lcom/xueqiu/android/message/SelectUserActivity;I)V

    goto :goto_0
.end method
