.class public abstract Lcom/nhaarman/listviewanimations/a;
.super Landroid/widget/BaseAdapter;
.source "ArrayAdapter.java"

# interfaces
.implements Lcom/nhaarman/listviewanimations/a/c;
.implements Lcom/nhaarman/listviewanimations/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/nhaarman/listviewanimations/a/c",
        "<TT;>;",
        "Lcom/nhaarman/listviewanimations/a/f;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nhaarman/listviewanimations/a;-><init>(B)V

    .line 48
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .param p1    # B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/a;->a:Ljava/util/List;

    .line 59
    return-void
.end method
