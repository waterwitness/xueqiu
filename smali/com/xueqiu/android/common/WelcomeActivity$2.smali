.class final Lcom/xueqiu/android/common/WelcomeActivity$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/WelcomeActivity;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/WelcomeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/xueqiu/android/common/WelcomeActivity$2;->b:Lcom/xueqiu/android/common/WelcomeActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/WelcomeActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity$2;->b:Lcom/xueqiu/android/common/WelcomeActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/WelcomeActivity$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/WelcomeActivity;->a(Lcom/xueqiu/android/common/WelcomeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity$2;->b:Lcom/xueqiu/android/common/WelcomeActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/WelcomeActivity;->a(Lcom/xueqiu/android/common/WelcomeActivity;I)V

    .line 262
    return-void
.end method
