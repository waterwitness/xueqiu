.class final Landroid/support/v4/view/an$1;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/support/v4/view/as;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/an;->a(Landroid/view/MenuItem;Landroid/support/v4/view/ap;)Landroid/view/MenuItem;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ap;

.field final synthetic b:Landroid/support/v4/view/an;


# direct methods
.method constructor <init>(Landroid/support/v4/view/an;Landroid/support/v4/view/ap;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v4/view/an$1;->b:Landroid/support/v4/view/an;

    iput-object p2, p0, Landroid/support/v4/view/an$1;->a:Landroid/support/v4/view/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v4/view/an$1;->a:Landroid/support/v4/view/ap;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ap;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/view/an$1;->a:Landroid/support/v4/view/ap;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ap;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
