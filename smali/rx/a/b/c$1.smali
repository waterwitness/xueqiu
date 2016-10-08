.class final Lrx/a/b/c$1;
.super Landroid/content/BroadcastReceiver;
.source "OnSubscribeLocalBroadcastRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/a/b/c;
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lrx/a/b/c;


# direct methods
.method constructor <init>(Lrx/a/b/c;Lrx/i;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lrx/a/b/c$1;->b:Lrx/a/b/c;

    iput-object p2, p0, Lrx/a/b/c$1;->a:Lrx/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lrx/a/b/c$1;->a:Lrx/i;

    invoke-virtual {v0, p2}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
