.class final Lcom/xueqiu/android/message/ChatActivity$18;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->n()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$18;->a:Lcom/xueqiu/android/message/ChatActivity;

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
    .line 808
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$18;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 809
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<img src=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mListViewpng\" alt=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" title=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 811
    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$18;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v2}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getSelectionEnd()I

    move-result v2

    .line 813
    iget-object v3, p0, Lcom/xueqiu/android/message/ChatActivity$18;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v3}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 814
    iget-object v4, p0, Lcom/xueqiu/android/message/ChatActivity$18;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1, v4}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 815
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$18;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setSelection(I)V

    .line 816
    invoke-static {}, Lcom/xueqiu/android/message/ChatActivity;->l()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$18;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v2}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 817
    if-eqz v1, :cond_0

    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/message/ChatActivity;->l()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$18;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v2}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, ""

    :cond_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    return-void
.end method
