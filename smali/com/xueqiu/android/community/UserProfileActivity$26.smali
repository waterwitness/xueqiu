.class final Lcom/xueqiu/android/community/UserProfileActivity$26;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$26;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$26;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->finish()V

    .line 289
    return-void
.end method
