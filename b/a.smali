.class public final Lb/a;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;


# direct methods
.method public constructor <init>(Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lb/a;->a:Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;

    .line 3
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 10

    .line 1
    const-string v0, "param"

    invoke-static {p1, v0}, Lc/a;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a;->a:Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;

    invoke-static {v0, p1}, Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;->a(Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-static {v1, v3}, Lc/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    move v5, v2

    :goto_1d
    if-ge v5, v4, :cond_2b

    aget-object v6, v1, v5

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_28

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 2
    :cond_2b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    const/4 v5, 0x0

    if-ltz v1, :cond_39

    .line 3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3a

    :cond_39
    move-object v1, v5

    .line 4
    :goto_3a
    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-gt v4, v6, :cond_47

    .line 6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 7
    :cond_47
    check-cast v5, Ljava/lang/String;

    const-string v6, "getprop"

    invoke-static {v1, v6}, Lc/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 8
    iget-object v0, v0, Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;->b:Ljava/util/LinkedHashMap;

    .line 9
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Dummy"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aput-object v0, p1, v2

    :cond_7f
    return-void
.end method
