.class final Lcom/xueqiu/android/common/SearchNameCardActivity$2;
.super Ljava/lang/Object;
.source "SearchNameCardActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/SearchNameCardActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/SearchNameCardActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/SearchNameCardActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$2;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

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
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$2;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->b(Lcom/xueqiu/android/common/SearchNameCardActivity;)Lcom/xueqiu/android/message/a/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/message/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 106
    iget-object v1, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$2;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->a(Lcom/xueqiu/android/common/SearchNameCardActivity;Lcom/xueqiu/android/community/model/User;)V

    .line 107
    return-void
.end method
