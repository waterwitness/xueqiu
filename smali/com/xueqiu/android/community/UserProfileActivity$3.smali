.class final Lcom/xueqiu/android/community/UserProfileActivity$3;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$3;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/UserProfileActivity$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$3;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->a(Lcom/xueqiu/android/community/UserProfileActivity;Ljava/lang/String;)V

    .line 439
    return-void
.end method
