.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$5;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$5;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$5;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3

    .prologue
    .line 638
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$5;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$5;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->e(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->e(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$5;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$5;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$5;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->f(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2, p3}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Landroid/view/View;Ljava/util/List;I)V

    .line 640
    return-void
.end method
