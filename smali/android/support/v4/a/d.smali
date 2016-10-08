.class public final Landroid/support/v4/a/d;
.super Ljava/lang/Object;
.source "BackStackRecord.java"


# instance fields
.field public a:Landroid/support/v4/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/support/v4/a/ae;

.field public d:Landroid/view/View;

.field final synthetic e:Landroid/support/v4/a/b;


# direct methods
.method public constructor <init>(Landroid/support/v4/a/b;)V
    .locals 1

    .prologue
    .line 1447
    iput-object p1, p0, Landroid/support/v4/a/d;->e:Landroid/support/v4/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/d;->a:Landroid/support/v4/e/a;

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/d;->b:Ljava/util/ArrayList;

    .line 1451
    new-instance v0, Landroid/support/v4/a/ae;

    invoke-direct {v0}, Landroid/support/v4/a/ae;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/d;->c:Landroid/support/v4/a/ae;

    return-void
.end method
