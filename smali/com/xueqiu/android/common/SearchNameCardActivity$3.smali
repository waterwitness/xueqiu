.class final Lcom/xueqiu/android/common/SearchNameCardActivity$3;
.super Ljava/lang/Object;
.source "SearchNameCardActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/SearchNameCardActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/ba;

.field final synthetic b:Lcom/xueqiu/android/common/SearchNameCardActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/SearchNameCardActivity;Lcom/xueqiu/android/community/a/ba;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$3;->b:Lcom/xueqiu/android/common/SearchNameCardActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$3;->a:Lcom/xueqiu/android/community/a/ba;

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
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$3;->a:Lcom/xueqiu/android/community/a/ba;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ba;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 117
    iget-object v1, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$3;->b:Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->a(Lcom/xueqiu/android/common/SearchNameCardActivity;Lcom/xueqiu/android/community/model/User;)V

    .line 118
    return-void
.end method
