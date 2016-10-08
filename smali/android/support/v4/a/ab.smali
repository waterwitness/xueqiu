.class final Landroid/support/v4/a/ab;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final c:Landroid/os/Bundle;

.field d:Landroid/support/v4/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/support/v4/a/ab;->a:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Landroid/support/v4/a/ab;->b:Ljava/lang/Class;

    .line 70
    iput-object p3, p0, Landroid/support/v4/a/ab;->c:Landroid/os/Bundle;

    .line 71
    return-void
.end method
