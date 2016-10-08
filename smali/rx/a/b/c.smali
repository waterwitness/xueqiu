.class final Lrx/a/b/c;
.super Ljava/lang/Object;
.source "OnSubscribeLocalBroadcastRegister.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/a/b/c;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lrx/a/b/c;->b:Landroid/content/IntentFilter;

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 28
    check-cast p1, Lrx/i;

    .line 1040
    iget-object v0, p0, Lrx/a/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    .line 1041
    new-instance v1, Lrx/a/b/c$1;

    invoke-direct {v1, p0, p1}, Lrx/a/b/c$1;-><init>(Lrx/a/b/c;Lrx/i;)V

    .line 1048
    new-instance v2, Lrx/a/b/c$2;

    invoke-direct {v2, p0, v0, v1}, Lrx/a/b/c$2;-><init>(Lrx/a/b/c;Landroid/support/v4/content/r;Landroid/content/BroadcastReceiver;)V

    invoke-static {v2}, Lrx/j/g;->a(Lrx/c/a;)Lrx/j;

    move-result-object v2

    .line 1055
    invoke-virtual {p1, v2}, Lrx/i;->a(Lrx/j;)V

    .line 1056
    iget-object v2, p0, Lrx/a/b/c;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 28
    return-void
.end method
