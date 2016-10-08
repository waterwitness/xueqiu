.class final Lcom/xueqiu/android/message/a$11;
.super Ljava/lang/Object;
.source "GroupProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/xueqiu/android/message/a$11;->a:Lcom/xueqiu/android/message/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 263
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 264
    return-void
.end method
