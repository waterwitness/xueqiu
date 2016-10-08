.class final Lcom/xueqiu/android/message/a/a$1;
.super Ljava/lang/Object;
.source "AlphabetIndexUserAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/a;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/xueqiu/android/message/a/a$1;->a:Lcom/xueqiu/android/message/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 129
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    check-cast p2, Lcom/xueqiu/android/community/model/User;

    .line 1132
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v3

    .line 1161
    :cond_1
    :goto_0
    return v1

    .line 1135
    :cond_2
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v1, v2

    .line 1136
    goto :goto_0

    .line 1139
    :cond_4
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 1140
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v0, v1

    .line 1142
    :goto_1
    array-length v6, v4

    array-length v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v0, v6, :cond_a

    .line 1143
    aget-char v6, v4, v0

    aget-char v7, v5, v0

    if-eq v6, v7, :cond_9

    .line 1144
    aget-char v4, v4, v0

    .line 1145
    aget-char v0, v5, v0

    .line 1147
    invoke-static {v4}, Lcom/xueqiu/android/message/a/a;->a(C)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0}, Lcom/xueqiu/android/message/a/a;->a(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1148
    if-eq v4, v0, :cond_5

    .line 1149
    sub-int v1, v4, v0

    goto :goto_0

    .line 1151
    :cond_5
    sub-int v1, v4, v0

    goto :goto_0

    .line 1152
    :cond_6
    invoke-static {v4}, Lcom/xueqiu/android/message/a/a;->a(C)Z

    move-result v5

    if-eqz v5, :cond_7

    move v1, v2

    .line 1153
    goto :goto_0

    .line 1154
    :cond_7
    invoke-static {v0}, Lcom/xueqiu/android/message/a/a;->a(C)Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v3

    .line 1155
    goto :goto_0

    .line 1158
    :cond_8
    if-eq v4, v0, :cond_1

    .line 1159
    sub-int v1, v4, v0

    goto :goto_0

    .line 1142
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1164
    :cond_a
    array-length v0, v4

    array-length v1, v5

    sub-int v1, v0, v1

    .line 129
    goto :goto_0
.end method
