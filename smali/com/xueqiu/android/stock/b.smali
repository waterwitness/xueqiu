.class final Lcom/xueqiu/android/stock/b;
.super Landroid/support/v4/a/v;
.source "FinancialDataActivity.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/stock/FinancialDataActivity;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/FinancialDataActivity;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/xueqiu/android/stock/b;->b:Lcom/xueqiu/android/stock/FinancialDataActivity;

    .line 141
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 142
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/stock/b;->b:Lcom/xueqiu/android/stock/FinancialDataActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->a(Lcom/xueqiu/android/stock/FinancialDataActivity;)[Landroid/support/v4/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/b;->b:Lcom/xueqiu/android/stock/FinancialDataActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/FinancialDataActivity;->a(Lcom/xueqiu/android/stock/FinancialDataActivity;)[Landroid/support/v4/a/i;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/stock/b;->b:Lcom/xueqiu/android/stock/FinancialDataActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->b(Lcom/xueqiu/android/stock/FinancialDataActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/stock/b;->b:Lcom/xueqiu/android/stock/FinancialDataActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->b(Lcom/xueqiu/android/stock/FinancialDataActivity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/b;->b:Lcom/xueqiu/android/stock/FinancialDataActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/FinancialDataActivity;->b(Lcom/xueqiu/android/stock/FinancialDataActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
