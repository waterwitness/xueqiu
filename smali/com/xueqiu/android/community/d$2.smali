.class final Lcom/xueqiu/android/community/d$2;
.super Ljava/lang/Object;
.source "FindPeopleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/xueqiu/android/community/d$2;->a:Lcom/xueqiu/android/community/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 586
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 587
    return-void
.end method
