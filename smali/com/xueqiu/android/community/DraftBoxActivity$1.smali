.class final Lcom/xueqiu/android/community/DraftBoxActivity$1;
.super Ljava/lang/Object;
.source "DraftBoxActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 70
    iput-object p1, p0, Lcom/xueqiu/android/community/DraftBoxActivity$1;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Draft;

    .line 76
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/DraftBoxActivity$1;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    const-class v3, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v3, "extra_draft"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    const-string v3, "extra_write_type"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v3, "extra_is_from_draft"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
    iget-object v2, p0, Lcom/xueqiu/android/community/DraftBoxActivity$1;->a:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/community/DraftBoxActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Draft;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/DraftBoxActivity;->a(ILjava/lang/String;)Z

    .line 85
    return-void
.end method
