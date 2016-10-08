.class final Lcom/xueqiu/android/common/a/a$1;
.super Ljava/lang/Object;
.source "AlphabetIndexAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/a/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/a/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/a/a;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/xueqiu/android/common/a/a$1;->a:Lcom/xueqiu/android/common/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 129
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .line 1132
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1133
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1135
    invoke-static {v1}, Lcom/xueqiu/android/common/a/a;->a(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/xueqiu/android/common/a/a;->a(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1136
    if-eq v1, v2, :cond_1

    .line 1137
    sub-int v0, v1, v2

    .line 1147
    :cond_0
    :goto_0
    return v0

    .line 1139
    :cond_1
    sub-int v0, v1, v2

    goto :goto_0

    .line 1140
    :cond_2
    invoke-static {v1}, Lcom/xueqiu/android/common/a/a;->a(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1141
    const/4 v0, 0x1

    goto :goto_0

    .line 1142
    :cond_3
    invoke-static {v2}, Lcom/xueqiu/android/common/a/a;->a(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1143
    const/4 v0, -0x1

    goto :goto_0

    .line 1146
    :cond_4
    if-eq v1, v2, :cond_0

    .line 1147
    sub-int v0, v1, v2

    goto :goto_0
.end method
