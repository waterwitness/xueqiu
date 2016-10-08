.class final Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$5;
.super Ljava/lang/Object;
.source "FindPeopleFromWeiBoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$5;->a:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 478
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 479
    return-void
.end method
