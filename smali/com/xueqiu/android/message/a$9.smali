.class final Lcom/xueqiu/android/message/a$9;
.super Ljava/lang/Object;
.source "GroupProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 193
    iput-object p1, p0, Lcom/xueqiu/android/message/a$9;->a:Lcom/xueqiu/android/message/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/message/a$9;->a:Lcom/xueqiu/android/message/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->onBackPressed()V

    .line 197
    return-void
.end method
