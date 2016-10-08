.class public final Lrx/a/b/a;
.super Ljava/lang/Object;
.source "ContentObservable.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            ")",
            "Lrx/a",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lrx/a/b/b;

    invoke-direct {v0, p0, p1}, Lrx/a/b/b;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            ")",
            "Lrx/a",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lrx/a/b/c;

    invoke-direct {v0, p0, p1}, Lrx/a/b/c;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    return-object v0
.end method
