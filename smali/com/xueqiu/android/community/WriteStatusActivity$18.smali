.class final Lcom/xueqiu/android/community/WriteStatusActivity$18;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$18;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 1028
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$18;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1030
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1031
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<img src=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png\" alt=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" title=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1032
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$18;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getSelectionEnd()I

    move-result v1

    .line 1034
    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$18;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1035
    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity$18;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1036
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$18;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setSelection(I)V

    .line 1037
    return-void
.end method
