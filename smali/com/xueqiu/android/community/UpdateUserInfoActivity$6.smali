.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/NumberPicker;

.field final synthetic b:Landroid/widget/NumberPicker;

.field final synthetic c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->a:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->b:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->e(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->e(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 647
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->b:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->f(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->f(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 648
    :goto_1
    iget-object v3, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->f(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->f(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 649
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;->b:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    move v2, v0

    goto :goto_1
.end method
