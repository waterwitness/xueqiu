.class final Lcom/xueqiu/android/community/DraftBoxActivity$2;
.super Ljava/lang/Object;
.source "DraftBoxActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/DraftBoxActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/DraftBoxActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/DraftBoxActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xueqiu/android/community/DraftBoxActivity$2;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Draft;

    .line 94
    iget-object v1, p0, Lcom/xueqiu/android/community/DraftBoxActivity$2;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/community/DraftBoxActivity;->a(Lcom/xueqiu/android/community/DraftBoxActivity;I)I

    .line 95
    iget-object v1, p0, Lcom/xueqiu/android/community/DraftBoxActivity$2;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getImageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/DraftBoxActivity;->a(Lcom/xueqiu/android/community/DraftBoxActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    return v0
.end method
