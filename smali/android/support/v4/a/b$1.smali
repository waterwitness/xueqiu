.class final Landroid/support/v4/a/b$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/a/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/a/b;->a(ILandroid/support/v4/a/d;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/a/i;

.field final synthetic b:Landroid/support/v4/a/b;


# direct methods
.method constructor <init>(Landroid/support/v4/a/b;Landroid/support/v4/a/i;)V
    .locals 0

    .prologue
    .line 1188
    iput-object p1, p0, Landroid/support/v4/a/b$1;->b:Landroid/support/v4/a/b;

    iput-object p2, p0, Landroid/support/v4/a/b$1;->a:Landroid/support/v4/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/support/v4/a/b$1;->a:Landroid/support/v4/a/i;

    .line 2240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1191
    return-object v0
.end method
