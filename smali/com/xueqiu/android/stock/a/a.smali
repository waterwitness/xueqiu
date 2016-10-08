.class public abstract Lcom/xueqiu/android/stock/a/a;
.super Ljava/lang/Object;
.source "BaseTableAdapter.java"

# interfaces
.implements Lcom/xueqiu/android/stock/a/ai;


# instance fields
.field private final a:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/a;->a:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/a;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public final b(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/a;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 23
    return-void
.end method
